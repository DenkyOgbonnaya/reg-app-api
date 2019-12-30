'use strict';

const msql = require('mysql2');
require('dotenv').config();

const {DB_HOST, DB_USER, DB_PASSWORD, DATABASE} = process.env;

// Create database connection pool
const connection = msql.createPool({
    host: DB_HOST,
    user: DB_USER,
    password: DB_PASSWORD,
    database: DATABASE,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
}).promise(); 

module.exports = connection;
