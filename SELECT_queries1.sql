SELECT title, duration FROM tracks
ORDER BY duration desc
LIMIT 1;

SELECT title FROM tracks
WHERE duration > 3.5 * 60;

SELECT title FROM collection
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM artists
WHERE name NOT LIKE '% %';

SELECT title FROM tracks
WHERE title LIKE '%my%';