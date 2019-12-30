'use strict';

const userRouter = require('express').Router();
const {registerUser, getSingleUser} = require('./user.controller')();
const {validateUserData, validatePin} = require('./user.validation');
const checkValidationResult = require('../middlewares/validation');

userRouter.route('/users')
.post(validateUserData, checkValidationResult, registerUser);
userRouter.route('/users/:pin')
.get(validatePin, checkValidationResult, getSingleUser);

module.exports = userRouter;
