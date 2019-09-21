var express = require('express');
var router = express.Router();

const reports = require("../models/reports.js");

router.get('/week/:weeknumber', function(req, res, next) {
    console.log(req.params.weeknumber);

    reports.getWeeklyReport(res, req.params.weeknumber);
});

router.get('/get-all-reports', function(req, res, next) {
    reports.getAllReports(res);
});

module.exports = router;
