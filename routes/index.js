var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
    const data = {
        data: [
            {
                msg: "Mitt namn är Emelie Åslund. Jag är 25år gammal. Född och uppvuxen i Ekerö " +
                ", Stockholm. Jag gick på NTI-Gymnasiet där jag studerade spelprogrammering. " +
                "För tillfället studerar jag samtidigt som jag jobbar på Lidl, där jag har " +
                "jobbat sen 2013. Jag valde att jobba efter gymnasiet då jag behövde en paus " +
                "från att plugga, sen blev det lite längre än planerat. " +
                "Jag har varit intresserad utav programmering sen ung ålder." +
                "Kan ha att göra med att jag älskar datorer. Spenderar många timmar vid datorn " +
                "och spelar spel för det mesta. Förutom datorer så är ett stort intresse för " +
                "mig hundar och scrapbooking. I januari 2019 köpte jag mig äntligen en liten " +
                "vovve som heter Max. Han är extremt efterlängtad efter att jag förlorade " +
                "mina tidigare hundar för flera år sedan. Han är en blandras utav " +
                "Siberian Husky, Finsk Lapphund, Samoyed och Norbottenspets! " +
                "Otroligt söt med mycket energi! Han älskar även att krypa under min säng och " +
                "sova, och hur han ens lyckas ta sig under nuförtiden vet jag inte riktigt."
            }
        ]
    };

    res.json(data);
});

module.exports = router;
