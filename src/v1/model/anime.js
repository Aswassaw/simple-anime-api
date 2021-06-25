const Sequelize = require('sequelize');
const { db } = require('../config');

const anime = db.define('anime', {
    id: { type: Sequelize.INTEGER, primaryKey: true },
    title: Sequelize.STRING,
    synopsis: Sequelize.STRING,
    type: Sequelize.STRING,
    episodes: Sequelize.INTEGER,
    premiered: Sequelize.STRING,
    studios: Sequelize.STRING,
    genres: Sequelize.STRING,
    score: Sequelize.FLOAT,
    source: Sequelize.STRING,
    cover: Sequelize.STRING,
}, {
    freezeTableName: true,
    timestamps: false,
});

module.exports = anime;