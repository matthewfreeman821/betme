const BetMe = require('./db');
const express = require('express');
const app = express();
app.listen(3000, () => {
    console.log('your server is running!');
});

console.log('Server is here');