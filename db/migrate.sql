DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    name VARCHAR(50),
    birthdate DATETIME,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(60) NOT NULL,
    UNIQUE(email)
);

CREATE TABLE IF NOT EXISTS reports (
    weeknumber INT NOT NULL,
    question VARCHAR(300),
    answer VARCHAR(5000),
    sortorder INT
);
