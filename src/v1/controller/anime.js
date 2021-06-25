const { animeModel } = require('../model');

const getAllData = async (req, res) => {
    try {
        let data = await animeModel.findAll({
            attributes: ['title', 'synopsis', 'type', 'episodes', 'premiered', 'studios', 'genres', 'score', 'source', 'cover'],
            order: [['id', 'asc']],
        });

        // Jika data berhasil ditemukan
        if (data.length > 0) {
            res.status(200).json({
                message: 'Data berhasil ditemukan.',
                status: 200,
                data: data,
            })
        }

        // Jika data gagal ditemukan
        else {
            res.status(404).json({
                message: 'Data gagal ditemukan.',
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

        // Jika data gagal ditemukan
        else {
            res.status(404).json({
                message: 'Data gagal ditemukan.',
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
        const data = await animeModel.create({
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
            data,
        })
    } catch (error) {
        res.status(404).json({
            message: error.message,
        })
    }
}

module.exports = { getAllData, getDataById, insertData };