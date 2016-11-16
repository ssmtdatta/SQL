/* example.sql 
written for sqlite at http://sqlitebrowser.org/
*/


/* create a simple table called Users which contains 
names and e-mail addresses of people
*/

 CREATE TABLE Users (
  name VARCHAR(128),
  email VARCHAR(128)
)

 INSERT INTO Users (name, email) VALUES ('Kristin', 'kf@umich.edu')
 INSERT INTO Users (name, email) VALUES ('Dylan', 'dyl@umich.edu')
 INSERT INTO Users (name, email) VALUES ('Chuck', 'csev@umich.edu')
 INSERT INTO Users (name, email) VALUES ('Teddy', 'ted@umich.edu')

 
 DELETE FROM Users WHERE email='ted@umich.edu'

 UPDATE Users SET name='Charles' WHERE email='csev@umich.edu'

 SELECT * FROM Users WHERE email='csev@umich.edu'

 SELECT * FROM Users ORDER BY name


/* create a relational model */


CREATE TABLE Genre (
  id INTEGER 
     NOT NULL 
     PRIMARY KEY
     AUTOINCREMENT 
     UNIQUE, 
  name TEXT
)

CREATE TABLE Album (
  id INTEGER 
     NOT NULL 
     PRIMARY KEY 
     AUTOINCREMENT 
     UNIQUE, 
  artist_id INTEGER,
  title TEXT
)

CREATE TABLE Track (
  id INTEGER 
     NOT NULL 
     PRIMARY KEY
     AUTOINCREMENT 
     UNIQUE, 
  title TEXT,
  album_id INTEGER,
  genre_id INTEGER,
  len INTEGER, 
  rating INTEGER, 
  count INTEGER
 )

insert into Artist (name) values ('Led Zepplin') -- not case sensitive --
insert into Artist (name) values ('AC/DC')
insert into Genre (name) values ('Rock') 
insert into Genre (name) values ('Metal')
insert into Album (title, artist_id) values ('Who Made Who', 2) 
insert into Album (title, artist_id) values ('IV', 1)

insert into Track (title, rating, len, count, album_id, genre_id) values ('Black Dog', 5, 297, 0, 2, 1)
insert into Track (title, rating, len, count, album_id, genre_id) values ('Stairway', 5, 482, 0, 2, 1)
insert into Track (title, rating, len, count, album_id, genre_id) values ('About to Rock', 5, 313, 0, 1, 2)
insert into Track (title, rating, len, count, album_id, genre_id) values ('Who Made Who', 5, 207, 0, 1, 2)


 /* Using Join Across Tables */

select Album.title, Artist.name from Album join Artist on Album.artist_id = Artist.id

select Album.title, Album.artist_id, Artist.id,Artist.name from Album join Artist on Album.artist_id = Artist.id

--  Joining two tables without an ON clause gives all possible combinations of rows.--
SELECT Track.title, Track.genre_id, Genre.id, Genre.name FROM Track JOIN Genre


-- A very complex statement --
select Track.title, Artist.name, Album.title, Genre.name 
  from Track 
    join Genre join Album join Artist 
      on Track. genre_id = Genre.id and Track.album_id = Album.id and Album.artist_id = Artist.id












   




