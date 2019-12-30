'use strict';

const userRouter = require('express').Router();
const {registerUser} = require('./user.controller')();
const {validateUserData} = require('./user.validation');
const checkValidationResult = require('../middlewares/validation');

userRouter.route('/users')
.post(validateUserData, checkValidationResult, registerUser);

module.exports = userRouter;
