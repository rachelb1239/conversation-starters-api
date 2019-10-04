const express = require('express');
const morgan = require('morgan');

const app = express();
const port = 3000;

// Middleware
app.use(express.json()); // parse json
app.use(morgan('tiny')); // logging

// Routes
app.use('/', require('./server/routes')); 

// Listen for Connections
app.listen(port, () => console.log(`Example app listening on port ${port}!`));