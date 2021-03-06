const fs = require('fs');
const path = require('path');
const { animeModel } = require('../model');

const getAllData = async (req, res) => {
    try {
        let data = await animeModel.findAll({
            order: [['id', 'asc']],
        });

        // Jika data berhasil ditemukan
        if (data.length > 0) {
            res.status(200).json({
                message: 'Data berhasil ditemukan.',
                status: 200,
                data,
            })
        }

        // Jika data tidak ditemukan
        else {
            res.status(404).json({
                message: 'Data tidak ditemukan.',
                status: 404,
            })
        }
    } catch (error) {
        res.status(404).json({
            message: error.message,
        })
    }
}

const getDataById = async (req, res) => {
    try {
        const id = req.params.id;
        let data = await animeModel.findAll({
            where: {
                id: id,
            }
        })

        // Jika data berhasil ditemukan
        if (data.length > 0) {
            res.status(200).json({
                message: 'Data berhasil ditemukan.',
                status: 200,
                data: data[0],
            })
        }

        // Jika data tidak ditemukan
        else {
            res.status(404).json({
                message: 'Data tidak ditemukan.',
                status: 404,
            })
        }
    } catch (error) {
        res.status(404).json({
            message: error.message,
        })
    }
}

const insertData = async (req, res) => {
    try {
        await animeModel.create({
            title: req.body.title,
            synopsis: req.body.synopsis,
            type: req.body.type,
            episodes: req.body.episodes,
            premiered: req.body.premiered,
            studios: req.body.studios,
            genres: req.body.genres,
            score: req.body.score,
            source: req.body.source,
            cover: req.file.path.slice(7),
        });

        // Jika data berhasil ditambahkan
        res.status(201).json({
            message: 'Data berhasil ditambahkan.',
            status: 201,
        })
    } catch (error) {
        res.status(404).json({
            message: error.message,
        })
    }
}

const updateData = async (req, res) => {
    try {
        const id = req.params.id;
        let data = await animeModel.findAll({
            where: {
                id: id,
            }
        })

        // Jika data yang akan diubah ditemukan
        if (data.length > 0) {
            // Jika cover diubah
            let cover = null;
            if (req.file) {
                cover = req.file.path.slice(7);
                // Menghapus cover lama
                fs.unlinkSync(path.resolve(__dirname, "../../../public/" + data[0].cover));
            } else {
                cover = data[0].cover;
            }

            await animeModel.update({
                title: req.body.title,
                synopsis: req.body.synopsis,
                type: req.body.type,
                episodes: req.body.episodes,
                premiered: req.body.premiered,
                studios: req.body.studios,
                genres: req.body.genres,
                score: req.body.score,
                source: req.body.source,
                cover: cover,
            }, {
                where: {
                    id: id,
                }
            });

            // Jika data berhasil diubah
            res.status(200).json({
                message: 'Data berhasil diubah.',
                status: 200,
            })
        } else {
            res.status(404).json({
                message: 'Data tidak ditemukan.',
                status: 404,
            })
        }
    } catch (error) {
        res.status(404).json({
            message: error.message,
        })
    }
}

const deleteData = async (req, res) => {
    try {
        const id = req.params.id;
        let data = await animeModel.findAll({
            where: {
                id: id,
            }
        })

        // Jika data yang akan dihapus ditemukan
        if (data.length > 0) {
            await animeModel.destroy({
                where: {
                    id: id,
                }
            });

            // Menghapus cover
            fs.unlinkSync(path.resolve(__dirname, "../../../public/" + data[0].cover));

            // Jika data berhasil dihapus
            res.status(200).json({
                message: 'Data berhasil dihapus.',
                status: 200,
            })
        } else {
            res.status(404).json({
                message: 'Data tidak ditemukan.',
                status: 404,
            })
        }
    } catch (error) {
        res.status(404).json({
            message: error.message,
        })
    }
}

module.exports = { getAllData, getDataById, insertData, updateData, deleteData };