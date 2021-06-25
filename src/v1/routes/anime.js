const express = require("express");
const router = express.Router();
const crypto = require("crypto");
const { animeController } = require('../controller');
const { upload } = require('../config');

router.get("/", animeController.getAllData);
router.get("/:id", animeController.getDataById);
router.post("/", upload.single('cover'), animeController.insertData);

module.exports = router;
