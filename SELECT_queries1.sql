SELECT title, duration FROM tracks
ORDER BY duration desc
LIMIT 1;

SELECT title FROM tracks
WHERE duration >= 3.5 * 60;

SELECT title FROM collection
WHERE year BETWEEN 2018 AND 2020;

SELECT name FROM artists
WHERE name NOT LIKE '% %';

SELECT title FROM tracks
WHERE title ILIKE 'my '
OR title ILIKE ' my '
OR title ILIKE 'my'
OR title ILIKE ' my';

SELECT title, COUNT(artist_id) FROM genres g
LEFT JOIN genres_artists ga ON g.id = ga.genre_id
GROUP BY title;

SELECT COUNT(*) FROM tracks
WHERE album_id IN (SELECT id FROM albums WHERE year_of_issue BETWEEN 2019 AND 2020);

SELECT a.title, AVG(duration)/60 FROM tracks t
JOIN albums a ON t.album_id = a.id
GROUP BY a.title;

SELECT a.name FROM artists a
WHERE a.name NOT IN (
	SELECT a.name FROM artists a
	JOIN artists_albums aa ON a.id = aa.artist_id
	JOIN albums al ON aa.album_id = al.id
	WHERE al.year_of_issue IN (2020)
);

SELECT distinct c.title FROM collection c
JOIN collection_tracks ct ON c.id = ct.collection_id
JOIN tracks t ON ct.track_id = t.id
JOIN albums al ON t.album_id = al.id
JOIN artists_albums aa ON al.id = aa.album_id
JOIN artists a ON aa.artist_id = a.id
WHERE a.name  IN ('Alex');

SELECT distinct a.title FROM albums a
JOIN artists_albums aa ON a.id = aa.album_id
JOIN genres_artists ga ON aa.artist_id = ga.artist_id
JOIN genres g ON ga.genre_id = g.id
WHERE ga.genre_id NOT IN(1)
GROUP BY a.title
HAVING COUNT(ga.artist_id) > 1;

SELECT t.title FROM tracks t
LEFT JOIN collection_tracks ct ON t.id = ct.track_id
WHERE ct.track_id IS NULL;

SELECT distinct a.name FROM artists a
JOIN artists_albums aa ON a.id = aa.artist_id
JOIN albums al ON aa.album_id = a.id
JOIN tracks t ON a.id = t.album_id
WHERE t.duration = (SELECT MIN(duration) FROM tracks);

SELECT al.title FROM albums al
JOIN tracks t ON al.id = t.album_id
WHERE duration = (SELECT MIN(duration) FROM tracks);