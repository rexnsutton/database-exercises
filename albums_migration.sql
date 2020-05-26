USE codeup_test_db;
DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    release_date INT NOT NULL,
    sales DECIMAL(6, 3) NOT NULL,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);