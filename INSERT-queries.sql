INSERT INTO artists(name) VALUES('Alex');

INSERT INTO artists(name) VALUES('Sasha');

INSERT INTO artists(name) VALUES('Den');

INSERT INTO artists(name) VALUES('Fea');

INSERT INTO artists(name) VALUES('Bob Sar');

INSERT INTO genres(title) VALUES('Pop');

INSERT INTO genres(title) VALUES('Rock');

INSERT INTO genres(title) VALUES('Electro');

INSERT INTO genres_artists(genre_id, artist_id) VALUES('1', '1');

INSERT INTO genres_artists(genre_id, artist_id) VALUES('1', '3');

INSERT INTO genres_artists(genre_id, artist_id) VALUES('2', '2');

INSERT INTO genres_artists(genre_id, artist_id) VALUES('3', '1');

INSERT INTO genres_artists(genre_id, artist_id) VALUES('3', '4');

INSERT INTO genres_artists(genre_id, artist_id) VALUES('2', '5');

INSERT INTO albums(title, year_of_issue) VALUES('yes', 2000);

INSERT INTO albums(title, year_of_issue) VALUES('no', 2001);

INSERT INTO albums(title, year_of_issue) VALUES('X', 2002);

INSERT INTO albums(title, year_of_issue) VALUES('Baby', 2020);

INSERT INTO artists_albums(artist_id, album_id) VALUES('4', '1');

INSERT INTO artists_albums(artist_id, album_id) VALUES('2', '2');

INSERT INTO artists_albums(artist_id, album_id) VALUES('3', '3');

INSERT INTO artists_albums(artist_id, album_id) VALUES('1', '3');

INSERT INTO artists_albums(artist_id, album_id) VALUES('5', '1');

INSERT INTO artists_albums(artist_id, album_id) VALUES('5', '4');

INSERT INTO tracks(title, duration, album_id) VALUES('Love', 180, 3);

INSERT INTO tracks(title, duration, album_id) VALUES('Power', 190, 2);

INSERT INTO tracks(title, duration, album_id) VALUES('SOS', 240, 1);

INSERT INTO tracks(title, duration, album_id) VALUES('Secret', 180, 3);

INSERT INTO tracks(title, duration, album_id) VALUES('Men', 183, 1);

INSERT INTO tracks(title, duration, album_id) VALUES('Cat', 125, 2);

INSERT INTO tracks(title, duration, album_id) VALUES('my', 250, 1);

INSERT INTO tracks(title, duration, album_id) VALUES('BMW', 210, 4);

INSERT INTO collection(title, year) VALUES('Hot new 2000', 2000);

INSERT INTO collection(title, year) VALUES('Hot new 2001', 2001);

INSERT INTO collection(title, year) VALUES('Hot new 2002', 2002);

INSERT INTO collection(title, year) VALUES('Better 2000-2001', 2001);

INSERT INTO collection(title, year) VALUES('Best old tracks', 2019);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(1, 3);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(1, 5);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(2, 2);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(2, 6);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(3, 1);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(3, 4);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(4, 3);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(4, 5);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(4, 6);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(1, 7);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(5, 1);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(5, 2);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(5, 3);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(5, 5);

INSERT INTO collection_tracks(collection_id, track_id) VALUES(5, 7);