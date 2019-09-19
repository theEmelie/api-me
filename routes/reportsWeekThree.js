var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    const data = {
        data: [
            {
                description: ""
            },
            {
                description: ""
            }
        ]
    };

    res.json(data);
});

module.exports = router;
