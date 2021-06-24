let Sequelize = require('sequelize');
let db = new Sequelize('simple-anime-api', 'root', '', {
    dialect: 'mysql',
    host: 'localhost',
})

module.exports = db;