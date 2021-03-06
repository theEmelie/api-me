DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users (
    name VARCHAR(50),
    birthdate DATETIME,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(60) NOT NULL,
    UNIQUE(email)
);

DROP TABLE IF EXISTS reports;
CREATE TABLE IF NOT EXISTS reports (
    weeknumber INT NOT NULL,
    title VARCHAR(300),
    description VARCHAR(5000)
);
