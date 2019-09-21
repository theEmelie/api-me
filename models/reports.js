const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('./db/texts.sqlite');

const reports = {
    addReport: function(res, body) {
        const weeknumber = body.weeknumber;
        const title = body.title;
        const description = body.description;

        db.run("INSERT INTO reports (weeknumber, title, description) VALUES (?, ?, ?)",
            weeknumber,
            title,
            description, (err) => {
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
        },

    getWeeklyReport: function(res, weeknumber) {
        sql = "SELECT * FROM reports WHERE weeknumber=" + weeknumber.toString();
        // console.log(sql);
        db.each(sql, function (err, row) {
            // console.log(row);
            return res.status(200).json({
                data: {
                    weeknumber: row.weeknumber,
                    title: row.title,
                    description: row.description
                }
            });
        })
    },

    getAllReports: function(res) {
        sql = "SELECT * FROM reports";
        var reportdata = [];

        // console.log(sql);

        db.each(sql, function (err, row) {
            // console.log(row);
            reportdata.push({weeknumber: row.weeknumber, title: row.title, description: row.description});
        }, function() {
            console.log(reportdata);
            return res.json({data: reportdata});
        })
    }
};
module.exports = reports;
