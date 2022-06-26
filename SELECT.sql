select name, year_release from albums
	where year_release = 2021;

select name, duration from tracks
	order by duration desc
	limit 1;

select name from tracks
	where duration > 210;

select name from collections 
	where year_release between 2018 and 2020;

select name from artists
	where name not like '%% %%';

select name from tracks
	where name like '%%My%%';