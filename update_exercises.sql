USE codeup_test_db;
SELECT 'all albums' AS 'all albums';
SELECT name FROM albums;
SELECT 'before 1980' AS 'All albums';
SELECT name FROM albums WHERE release_date BETWEEN 1800 AND 1980;
SELECT 'BY MJ' AS 'ALL ALBUMS';
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET sales = sales * 2;

