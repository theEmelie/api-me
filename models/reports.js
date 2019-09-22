const sqlite3 = require('sqlite3').verbose();
const db = new sqlite3.Database('./db/texts.sqlite');

const reports = {
    addReport: function(res, body) {
        const weeknumber = body.weeknumber;
        const title = body.title;
        const description = body.description;
        db.get("SELECT * FROM reports WHERE weeknumber=?",
        weeknumber,
        (err, rows) => {
            console.log("row:");
            console.log(rows);
            if (err) {
                return res.status(500).json({
                    errors: {
                        status: 500,
                        source: "/reports/add-reports",
                        title: "Database error",
                        detail: err.message
                    }
                });
            }

            if (rows !== undefined) {
                return res.status(418).json({
                    errors: {
                        status: 418,
                        source: "/reports/add-reports",
                        title: "Duplicate",
                        detail: "Duplicate weeknumber."
                    }
                });
            } else {
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
                }
            })
        },

    getWeeklyReport: function(res, weeknumber) {
        sql = "SELECT * FROM reports WHERE weeknumber=" + weeknumber.toString();
        var reportdata = [];

        console.log("check");

        db.each(sql, function (err, row) {
            // console.log(row);
            reportdata.push({weeknumber: row.weeknumber, title: row.title, description: row.description});
        }, function() {
            console.log(reportdata);
            return res.json({data: reportdata});
        })
    },

    getWeeknumbers: function(res) {
        sql = "SELECT DISTINCT weeknumber FROM reports ORDER BY weeknumber ASC";
        var reportdata = [];

        db.each(sql, function (err, row) {
            // console.log(row);
            reportdata.push({weeknumber: row.weeknumber});
        }, function() {
            console.log(reportdata);
            return res.json({data: reportdata});
        })
    },

    updateReport: function(res, body) {
        console.log("body: ");
        console.log(body);
        const weeknumber = body.weeknumber;
        const title = body.title;
        const description = body.description;
        db.run("UPDATE reports SET title=?, description=? WHERE weeknumber=?",
            title,
            description,
            weeknumber, (err) => {
                if (err) {
                    console.log(err);
                    return res.status(500).json({
                        errors: {
                            status: 500,
                            source: "/reports",
                            title: "Database error",
                            detail: err.message
                        }
                    });
                }

                return res.json({
                    data: {
                        message: "Report successfully updated."
                    }
                });
            });
        },
};
module.exports = reports;
