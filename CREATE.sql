---����-
create table if not exists Genres (
	id SERIAL primary key,
	name VARCHAR (60) unique not null
);

--������
create table if not exists Artists(
	id SERIAL primary key,
	name VARCHAR (80) unique not null
);

--������
create table if not exists Albums(
	id SERIAL primary key,
	name VARCHAR (80) not null,
	year_release INTEGER not null check (year_release > 0)
);

--�����
create table if not exists Tracks(
	id SERIAL primary key,
	album_id INTEGER not null references Albums(id),
	name VARCHAR (80) not null,
	duration numeric not null check (duration > 0)
);

--���������(��������)
create table if not exists Collections(
	id SERIAL primary key,
	name VARCHAR (80),
	year_release integer not null check (year_release > 0)
);

create table if not exists Genre_Artists(
	genres_id INTEGER not null references Genres(id),
	artists_id INTEGER not null references Artists(id),
	constraint pk1 primary key (genres_id,artists_id)
);

create table if not exists Album_Artists(
	artists_id INTEGER not null references Artists(id),
	albums_id INTEGER not null references Albums(id),
	constraint pk2 primary key (artists_id,albums_id)
);

create table if not exists Collections_Tracks(
	collections_id INTEGER not null references Collections (id),
	tracks_id INTEGER not null references Tracks(id),
	constraint pk3 primary key (collections_id, tracks_id)
);
