'use strict';

const {register, getUser} = require('./user.service')();
const {generatePin} = require('./user.helper');
const sendMail = require('../configs/nodemailer-config');
require('dotenv').config();


const userController = () => {

    // process user registration
    const registerUser = async(req, res) => {
        const {MAIL_USER} = process.env;
        const pin = generatePin(); //generate 10 random numbers
        const userData = {
            ...req.body,
            pin,
        }
        try {
            const result = await register(userData);
            if (result) {
                const mailMessage = `
                    <div>
                        <h1>Registration successfull</h1>
                        <p>Use this unique pin to confirm your registration <b>${pin}</b> </p>
                    </div>
                    `;
                const response = await sendMail(MAIL_USER, req.body.email, 'Test Registration', mailMessage);
                if (response) {
                    const message = `Registration successful! a personal pin has been sent to your email.
                        Use it to confirm your registration.`;
                    return res.status(201).send({message, ok:true})
                }
            }
            return res.status(400).send({message: 'Registration failed!, invalid details', ok:false})
        } catch (err) {
           res.status(500).send({message: 'Registration failed!, internal server error', ok:false})
        }
    }
    //get a single user from db
    const getSingleUser = async(req, res) => {
        const {pin} = req.params;

        try {
            const result = await getUser(pin);
            if (result.length>0)
                return res.status(200).send({user: result[0], ok:true});
            return res.status(404).send({message: 'User not found', ok:false});
        } catch (err) {
            res.status(500).send({message: 'Internal server error', ok:false});
        }
    };
    return {
        registerUser,
        getSingleUser
    }
}
module.exports = userController;
