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

    return {
        register,
    };
};
module.exports = userService;
