'use strict';

const {check, param} = require('express-validator');

// validate user input
const validateUserData = [
    check('name', 'name is required').notEmpty(),
    check('phone', 'Valid Phone number is required').notEmpty()
    .isLength({min: 11, max: 16}),
    check('email', 'Vailid email address is required').isEmail(),
];
// validate user pin
const validatePin = [
    param('pin', 'Pin must be 10 digits long').isLength({min: 10, max: 10}),
];
module.exports = {
    validateUserData,
    validatePin,
};
