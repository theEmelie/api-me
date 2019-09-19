const bodyParser = require("body-parser");
const express = require("express");
const cors = require('cors');
const morgan = require('morgan');
const app = express();
const port = 1337;

const index = require('./routes/index');
const reportsGet = require('./routes/reports-get');
const reportsPost = require('./routes/reports');
const auth = require('./routes/auth');

// app.use(bodyParser());
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

app.use('/', index);
app.use('/reports/week/:msg', reportsGet);
app.use('/reports', reportsPost);
app.use('/auth', auth);

// Add routes for 404 and error handling
// Catch 404 and forward to error handler
// Put this last
app.use((req, res, next) => {
    var err = new Error("Not Found");
    err.status = 404;
    next(err);
});

app.use(cors());

// don't show the log when it is test
if (process.env.NODE_ENV !== 'test') {
    // use morgan to log at command line
    app.use(morgan('combined')); // 'combined' outputs the Apache style LOGs
}

// Start up server
app.listen(port, () => console.log(`Example API listening on port ${port}!`));
