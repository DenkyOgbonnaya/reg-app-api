'use strict';

const {check} = require('express-validator');

// validate user input
const validateUserData = [
    check('name', 'name is required').notEmpty(),
    check('phone', 'Valid Phone number is required').notEmpty()
    .isLength({min: 11, max: 16}),
    check('email', 'Vailid email address is required').isEmail(),
];

module.exports = {
    validateUserData,
};
