const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('./db/texts.sqlite');

const reports = {
    addReport: function(res, body) {
        const weeknumber = body.weeknumber;
        const question = body.question;
        const answer = body.answer;
        const sortorder = body.sortorder;

        db.run("INSERT INTO reports (weeknumber, question, answer, sortorder) VALUES (?, ?, ?, ?)",
            weeknumber,
            question,
            answer,
            sortorder, (err) => {
                if (err) {
                    return res.status(500).json({
                        errors: {
                            status: 500,
                            source: "/reports",
                            title: "Database error",
                            detail: err.message
                        }
                    });
                }

                return res.status(201).json({
                    data: {
                        message: "Report successfully added."
                    }
                });
            });
        }
};
module.exports = reports;
