const bodyParser = require("body-parser");
const express = require("express");
const cors = require('cors');
const morgan = require('morgan');
const app = express();
const port = 1337;

const index = require('./routes/index');
const reportsPost = require('./routes/reports');
const auth = require('./routes/auth');
const reportsGet = require('./routes/reportsGet');

app.use(cors());
// app.use(bodyParser());
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); // for parsing application/x-www-form-urlencoded

app.use('/', index);
app.use('/reports/', reportsGet);
app.use('/reports/add-report', reportsPost);
app.use('/auth', auth);

// Add routes for 404 and error handling
// Catch 404 and forward to error handler
// Put this last
app.use((req, res, next) => {
    var err = new Error("Not Found");
    err.status = 404;
    next(err);
});

// don't show the log when it is test
if (process.env.NODE_ENV !== 'test') {
    // use morgan to log at command line
    app.use(morgan('combined')); // 'combined' outputs the Apache style LOGs
}

// Start up server
const server = app.listen(port, () => console.log(`Backend api-me is listening to ${port}!`));

module.exports = server;
