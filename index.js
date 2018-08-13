const BetMe = require('./db');
const express = require('express');
const expressHbs = require('express-handlebars');
const app = express();

// This shit is necessary for the app to work and render something in the browser, all the way through the next comment
app.engine('.hbs', expressHbs({defaultLayout: 'layout', extname: '.hbs'}));
app.set('view engine', '.hbs');

const static = express.static;
app.use(static('public'));
app.use(static('public/images'));
// This is the end of necessary shit for this to work and render things in the browser

console.log('This should work');

// Homepage
app.get('/', (req, res) => {
    res.render('homepage')
});

// Player 1 tab
app.get('/player1', (req, res) => {
        res.render('player1')
});

//Player 2 tab
app.get('/player2', (req, res) => {
    res.render('player2')
});

//What the bet is tab
app.get('/bet', (req, res) => {
    res.render('bet')
});

// Winnings tab
app.get('/winnings', (req, res) => {
    res.render('winnings')
});

// Info tab
app.get('/info', (req, res) => {
    res.render('info')
});


// Sign up

// Sign in


app.listen(3000, () => {
    console.log('your server is running on port 3000!');
});

console.log('Server is here');