create table if not exists Genre (
	Id serial primary key,
	Name varchar(40) not null
);
create table if not exists Performer (
	Id serial primary key,
	Name varchar(40) not null,
	Alias varchar(40),
	Genre_id integer references Genre(id) not null
);
create table if not exists Album (
	Id serial primary key,
	Name date not null,
	Performer_id integer references Performer(id) not null
);
create table if not exists Track (
	Id serial primary key,
	Name date not null,
	Duration numeric not null,
	Album_id integer references Album(id) not null
);