const express = require("express");
const router = express.Router();
const { animeController } = require('../controller');

router.get("/", animeController.getAllData);
router.get("/:id", animeController.getDataById);

module.exports = router;
