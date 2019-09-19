var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    const data = {
        data: [
            {
                head: "För att kunna köra denna react applikation behöver du göra följande:"
            },
            {
                head: "`npm install`",
                description: "Installerar npm moduler."
            },
            {
                head: "`npm start`",
                description: "Kör applikationen i utvecklingsläge."
            },
            {
                head: "`npm run build`",
                description: "Bygger appen för produktion till `build` mappen."
            }
        ]
    };

    res.json(data);
});

module.exports = router;
