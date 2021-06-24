const express = require("express");
const chalk = require('chalk');
const app = express();
const port = 3000; // Port

app.use("/", (req, res) => {
    res.status(404).send("Server berjalan");
});

// Menjalankan server
app.listen(port, () => {
    console.log(chalk`Server berjalan pada port {green ${port}}`);
    console.log(chalk`Kunjungi: {green http://localhost:${port}}`);
});
