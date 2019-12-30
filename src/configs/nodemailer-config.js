'use strict';

const nodemailer = require('nodemailer');
const dotenv = require('dotenv');

dotenv.config();

const {MAIL_USER, MAIL_PASS} = process.env;

// set up transport service for nodemailer
const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: MAIL_USER,
        pass: MAIL_PASS,
    },
});

// send email to user using nodemailer SMPT transport
const sendMail = async(from, to, subject, message) => {
    try {
        return await transporter.sendMail({
            from,
            to,
            subject,
            html: message,
        });
    } catch (err) {
        throw err;
    }
};
module.exports = sendMail;
