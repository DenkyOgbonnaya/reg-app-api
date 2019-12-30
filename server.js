'use strict';

const express = require('express');
const {userRouter} = require('./src/user');

const app = express();
const PORT = process.env.PORT || 8080;

app.use(express.json());
app.use('/api', userRouter);

app.listen(PORT, (err) => {
    if (!err)
        console.log(`Server running on port ${PORT}`);
});
