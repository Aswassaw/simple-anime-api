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

module.exports = { getAllData, getDataById };