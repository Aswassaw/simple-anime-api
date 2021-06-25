const multer = require('multer');
const crypto = require("crypto");

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, './public/uploads/cover/');
    },
    filename: function (req, file, cb) {
        const randomName = crypto.randomBytes(20).toString('hex');
        const extension = file.mimetype.slice(6);
        cb(null, randomName + "." + extension);
    }
});
const upload = multer({ storage: storage });

module.exports = upload;