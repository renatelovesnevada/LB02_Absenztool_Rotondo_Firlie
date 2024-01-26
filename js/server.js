const express = require('express');
const mysql = require('mysql2/promise'); // Using promise version for async/await
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

// MySQL configuration
const dbConfig = {
    host: 'localhost',
    user: 'root',
    password: 'MYs*q03l',
    database: 'Absenzensystem',
};

// API endpoint to fetch data from the MySQL table


app.get('/data/all', async (req, res) => {
    try {
        const connection = await mysql.createConnection(dbConfig);

        // Fetch data from each table
        const [absenzData] = await connection.execute('SELECT * FROM Absenz');
        const [begrundungData] = await connection.execute('SELECT * FROM Begründung');
        const [abteilungData] = await connection.execute('SELECT * FROM Abteilung');
        const [studentData] = await connection.execute('SELECT * FROM Student');
        const [loginData] = await connection.execute('SELECT * FROM Login');

        connection.end();

        // Create a JSON object containing data from all tables
        const allData = {
            Absenz: absenzData,
            Begrundung: begrundungData,
            Abteilung: abteilungData,
            Student: studentData,
            Login: loginData,
        };

        res.json(allData);
    } catch (error) {
        console.error('Error fetching data from MySQL:', error);
        res.status(500).json({ error: 'Internal Server Error', details: error.message });
    }
});


app.get('/', (req, res) => {
    res.send('Hello, this is the root!');
});

// Start the server
app.listen(port, () => {
    console.log(`Server is listening at http://localhost:${port}`);
});


