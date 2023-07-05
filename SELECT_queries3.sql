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