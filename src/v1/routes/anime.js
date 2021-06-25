const express = require("express");
const router = express.Router();
const { animeController } = require('../controller');
const { upload } = require('../config');

// Mendapatkan semua data Anime
router.get("/", animeController.getAllData);
// Mendapatkan sebuah data Anime berdasarkan id
router.get("/:id", animeController.getDataById);
// Menambahkan data Anime baru ke database
router.post("/", upload.single('cover'), animeController.insertData);
// Menambahkan data Anime baru ke database
router.put("/:id", upload.single('cover'), animeController.updateData);
// Menghapus data Anime dari database
router.delete("/:id", animeController.deleteData);

module.exports = router;
