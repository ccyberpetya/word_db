insert into artist (id, name)
values 
	(1, 'MC Ren'),
	(2,'IceCube'),
	(3, 'Dr.Dre'),
	(4,	'Eazy-E');
insert into genre (id,name)
values 
	(1,'GangstaRap'),
	(2,'StreetRap'),
	(3,'KeyPop');
insert into  album (id,release_year,title)
values 
	(1, 1992, 'Shock of the Hour'),
  	(2, 1992, 'The Predator'),
  	(3, 1999, '2001'),
	(4, 2019, 'Eazy-Duz-It');
insert into track(id,album_id,duration,title)
values
	 (1, 1, 215, 'Final Frontier'),
     (2, 2, 198, 'It Was a Good Day'),
     (3, 2, 234, 'my Wicked'),
     (4, 3, 247, 'Still D.R.E.'),
     (5, 3, 213, 'The Watcher'),
     (6, 4, 189, 'Boyz-n-the-Hood');
insert into compilation(id,release_year,title)
values
	(1, 2005, 'West Coast Legends'),
    (2, 2019, 'Rap Classics Vol.1'),
    (3, 2018,'The Chronic Collection'),
    (4, 2020,'Street Kings');
insert into artistgenre (artist_id,genre_id)
values 
	(1,1),
	(2,2),
	(3,1),
	(1,2),
	(2,1);
insert into artistalbum (artist_id,album_id)
values 
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(3,2);
insert into compilationtrack (compilation_id,track_id)
values 
	(1,1),
	(1,6),
	(2,2),
	(3,4),
	(3,5),
	(4,1),
	(4,4);