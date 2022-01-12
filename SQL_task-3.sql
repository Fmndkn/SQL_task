CREATE TABLE IF NOT EXISTS Genre (
	id serial PRIMARY KEY,
	Name varchar(40) not null
);
CREATE TABLE IF NOT EXISTS performer (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	alias varchar(40)
);
CREATE TABLE IF NOT EXISTS album (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	date_publication date not null
);
CREATE TABLE IF NOT EXISTS performer_album (
	id serial PRIMARY KEY,
	album_id integer references album(id) not null,
	performer_id integer references performer(id) not null
);
CREATE TABLE IF NOT EXISTS performer_genre (
	id serial PRIMARY KEY,
	genre_id integer references genre(id) not null,
	performer_id integer references performer(id) not null
);
CREATE TABLE IF NOT EXISTS track (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	duration numeric not null,
	album_id integer references album(id) not null
);
CREATE TABLE IF NOT EXISTS collection (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	date_publication date not null,
	track_id integer references track(id) not null
);