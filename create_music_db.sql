
 CREATE TABLE Artist (
	id INTEGER
	   NOT NULL
		 PRIMARY KEY
		 AUTOINCREMENT
		 UNIQUE,
	name TEXT
	) ;
	
CREATE TABLE Genre (
	id INTEGER
	   NOT NULL
		 PRIMARY KEY
		 AUTOINCREMENT
		 UNIQUE,
	name TEXT
	) ;
	
	
CREATE TABLE Album(
	id INTEGER
	   NOT NULL
		 PRIMARY KEY
		 AUTOINCREMENT
		 UNIQUE,
	title TEXT,
	artist_id INTEGER
	);

CREATE TABLE Track (
 id INTEGER
    NOT NULL
		PRIMARY KEY
		AUTOINCREMENT
		UNIQUE,
 title TEXT,
 rating INTEGER,
 len INTEGER,
 count INTEGER,
 album_id INTEGER,
 genre_id INTEGER
	)


-- insert rows to Artist table
insert into Artist (name) values ('Led Zepplin');
insert into Artist (name) values ('AC/DC');

-- insert rows to Genre table
insert into Genre (name) values ('Rock');
insert into Genre (name) values ('Metal')	



-- insert rows to Album table
-- insert unique id for artist instead of the artist's name.
insert into Album (title, artist_id) 
	values ('Who Made Who', 2);
insert into Album (title, artist_id)
  values ('IV', 1)


-- insert rows to Track table
-- title is a logical key. that's why we allow text
insert into Track (title, rating, len, count, album_id, genre_id) 
  values ('Black Dog', 5, 297, 0, 2, 1);
insert into Track (title, rating, len, count, album_id, genre_id) 
  values ('Stairway', 5, 482, 0, 2, 1);
insert into Track (title, rating, len, count, album_id, genre_id) 
  values ('About to Rock', 5, 313, 0, 1, 2) ;
insert into Track (title, rating, len, count, album_id, genre_id) 
  values ('Who Made Who', 5, 207, 0, 1, 2) ; 
