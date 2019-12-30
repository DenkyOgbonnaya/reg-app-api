'use strict';

const dbConnection = require('../database');

const userService = () => {

    // add new user to MYSQL DB
    const register = async({name, phone, email, pin}) => {
        const query = 'INSERT INTO users SET name = ?, phone = ?, email = ?, pin = ?';
        try {
            const result = await dbConnection.execute(query, [name, phone, email, pin]);
            return result;
        } catch (err) {
            throw err;
        }
    };
    // get user from db with given pin
    const getUser = async pin => {
        const query = 'SELECT id, name, phone, email, reg_date FROM users WHERE pin = ?';
        try {
            const [rows] = await dbConnection.execute(query, [pin]);
            return rows;
        } catch (err) {
            throw err;
        }
    };
    return {
        register,
        getUser,
    };
};
module.exports = userService;
