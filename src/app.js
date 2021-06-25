const express = require("express");
const { animeRoutes } = require('./v1/routes');
const auth = require('express-basic-auth');
const helmet = require('helmet');
const morgan = require('morgan');
const chalk = require('chalk');

const app = express();
const port = 7000; // Port

// Security
app.use(helmet());

// Menbuat basic-auth
app.use(auth({
    users: { 'admin': 'password' },
    unauthorizedResponse: (req) => {
        return req.auth ? `Credentials ${req.auth.user} : ${req.auth.password} Rejected` : "Unauthorized";
    },
}));

app.use(morgan("dev"));
app.use(express.static("public")); // Menentukan tempat asset static
app.use("/v1/api/anime", animeRoutes);

// Menjalankan server
app.listen(port, () => {
    console.log(chalk`Server berjalan pada port {green ${port}}`);
    console.log(chalk`Kunjungi url berikut: {green http://localhost:${port}}`);
});
