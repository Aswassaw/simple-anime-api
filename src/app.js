const express = require("express");
const app = express();
const port = 3000; // Port

app.use("/", (req, res) => {
    res.status(404).send("Server berjalan");
});

// Menjalankan server
app.listen(port, () => {
    console.log(`Server berjalan pada port ${port}`);
    console.log(`Kunjungi: http://localhost:${port}`);
});
