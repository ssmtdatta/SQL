/* Explore the JOIN operation */
/*
The JOIN operation links across several tables as part of 
a select operation.
Must tell the JOIN how to use the keys that make the connection 
between the tables using an ON clause.
*/
select Album.title, Artist.name 
  from Artist 
	  join Album
		  on Album.artist_id = Artist.id ;

select Track.title, Genre.name 
  from Track 
	  join Genre 
		  on Track.genre_id = Genre.id ;
			
select Track.title, 
       Artist.name, 
	     Album.title, 
			 Genre.name 
  from Track 
	  join Genre 
		  join Album 
			  join Artist 
				  on Track. genre_id = Genre.id and Track.album_id = Album.id and Album.artist_id = Artist.id
			
 
			
 
