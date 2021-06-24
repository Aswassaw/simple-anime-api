const express = require("express");
const router = express.Router();
const { animeController } = require('../controller');

router.get("/", animeController.getAllData);

module.exports = router;
