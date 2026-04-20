const app = require('./app');
const db = require('./config/db')
const Usermodel = require('./model/user.model')

const port = 3000;

// Wait for MongoDB to connect before starting server
db.on('open', () => {
    app.get('/', (req, res) => {
        res.send("Hello Developer!!!");
    });

    app.listen(port, () => {
        console.log(`Server running at: http://localhost:${port}`);
    });
});

db.on('error', (err) => {
    console.error('MongoDB connection failed:', err.message);
    process.exit(1);
});