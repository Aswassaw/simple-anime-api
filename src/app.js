const express = require("express");
const { animeRoutes } = require('./v1/routes');
const chalk = require('chalk');

const app = express();
const port = 3000; // Port

app.use("/v1/api/anime", animeRoutes);

// Menjalankan server
app.listen(port, () => {
    console.log(chalk`Server berjalan pada port {green ${port}}`);
    console.log(chalk`Kunjungi: {green http://localhost:${port}}`);
});
