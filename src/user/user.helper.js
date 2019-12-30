'use strict';

// generate 10 unique random numbers
const generatePin = () => {
    return Math.random().toString().slice(2, 12);
};
module.exports = {
    generatePin,
};
