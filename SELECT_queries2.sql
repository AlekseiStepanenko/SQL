SELECT COUNT(artist_id) FROM genres_artists
WHERE  genre_id = 1;

SELECT COUNT(artist_id) FROM genres_artists
WHERE  genre_id = 2;

SELECT COUNT(artist_id) FROM genres_artists
WHERE  genre_id = 3;

SELECT COUNT(*) FROM tracks
WHERE album_id IN (SELECT id FROM albums WHERE year_of_issue BETWEEN 2019 AND 2020);

SELECT AVG(duration) FROM tracks
WHERE album_id = 1;

SELECT AVG(duration) FROM tracks
WHERE album_id = 2;

SELECT AVG(duration) FROM tracks
WHERE album_id = 3;

SELECT a.name FROM artists a
JOIN artists_albums aa ON a.id = aa.artist_id
JOIN albums al ON aa.album_id = al.id
WHERE al.year_of_issue NOT IN (2020);

SELECT distinct c.title FROM collection c
JOIN collection_tracks ct ON c.id = ct.collection_id
JOIN tracks t ON ct.track_id = t.id
JOIN albums al ON t.album_id = al.id
JOIN artists_albums aa ON al.id = aa.album_id
JOIN artists a ON aa.artist_id = a.id
WHERE a.name  IN ('Alex');