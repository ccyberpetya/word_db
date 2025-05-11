select title,duration 
from track
order by duration desc
limit 1;

select title
from track
where duration >= 210;

select title
from compilation
where release_year  between 2018 and 2020;

select name
from artist
where name not like '% %';

select title
from track
where lower(title) like '%мой%' or lower(title) like '%my%';

select artist_id, genre_id 
from artistgenre
where 

select g.name as genre, COUNT(ag.artist_id) as artist_count
from genre g
join artistgenre ag on g.id = ag.genre_id
group by g.name;

select count(t.id) as track_count
from track t
join album a on t.album_id = a.id
where a.release_year between 2019 and 2020;

select a.title as album, avg(t.duration) as average_duration
from album a 
join track t on a.id = t.album_id
group by a.title;

select ar.name
from artist ar
where ar.id not in (
	select aa.artist_id
	from artistalbum aa
	join album a on aa.album_id  = a.id
	where a.release_year = 2020
);

select distinct c.title as compilation
from compilation c
join compilationtrack ct on c.id = ct.compilation_id
join track t on ct.track_id  = t.id
join album a on t.album_id = a.id
join artistalbum aa on a.id = aa.album_id
join artist ar on aa.artist_id = ar.id
where ar.name = 'Dr.Dre'; 