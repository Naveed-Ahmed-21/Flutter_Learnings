const mongoose = require('mongoose');

const connection = mongoose.createConnection('mongodb://localhost:27017/ToDoDB')
    .on('open', () => {
        console.log("✅ MongoDB Connected Successfully!!");
    })
    .on('error', (err) => {
        console.log("❌ MongoDB Connection Error:", err.message);
    })
    .on('disconnected', () => {
        console.log("⚠️  MongoDB Disconnected");
    });

module.exports = connection;

