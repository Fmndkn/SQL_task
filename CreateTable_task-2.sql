CREATE TABLE IF NOT EXISTS genre (
	id serial primary key,
	name varchar(40) not null unique
);
CREATE TABLE IF NOT EXISTS performer (
	id serial primary key,
	name varchar(40) not null unique,
	alias varchar(40),
	genre_id integer references genre(id) not null
);
CREATE TABLE IF NOT EXISTS album (
	id serial primary key,
	name varchar(40) not null unique,
	date_publication date not null,
	performer_id integer references performer(id) not null
);
CREATE TABLE IF NOT EXISTS track (
	id serial primary key,
	name varchar(40) not null unique,
	duration numeric not null,
	album_id integer references album(id) not null
);