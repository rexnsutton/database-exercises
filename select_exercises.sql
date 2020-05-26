USE codeup_test_db;
SELECT 'Pink Floyd' AS 'Pink Floyd';
SELECT * FROM albums WHERE artist = 'Pink Floyd';
SELECT 'year' AS 'sgt.pepper';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'genre' AS 'Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT 'albums' AS '90''s ';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 2000;


