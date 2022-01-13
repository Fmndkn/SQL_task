CREATE TABLE IF NOT EXISTS genre (
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
	release_date date not null
);
CREATE TABLE IF NOT EXISTS track (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	duration numeric not null,
	album_id integer not null references album(id)
);
CREATE TABLE IF NOT EXISTS collection (
	id serial PRIMARY KEY,
	name varchar(40) not null,
	release_date date not null
);
CREATE TABLE IF NOT EXISTS performer_album (
	album_id integer not null references album(id),
	performer_id integer not null references performer(id),
	constraint pk PRIMARY KEY key(performer_id, album_id)
);
CREATE TABLE IF NOT EXISTS performer_genre (
	genre_id integer not null references genre(id),
	performer_id integer not null references performer(id),
	constraint pk PRIMARY KEY key(performer_id, genre_id)
);
CREATE TABLE IF NOT EXISTS collection_track (
	track_id integer not null references track(id),
	collection_id integer not null references collection(id),
	constraint pk PRIMARY KEY key(track_id, collection_id)
);