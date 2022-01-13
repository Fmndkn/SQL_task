CREATE TABLE IF NOT EXISTS People (
	id serial PRIMARY KEY,
	Name varchar(40) not null
);
CREATE TABLE IF NOT EXISTS Department (
	id serial PRIMARY KEY,
	Name varchar(40) not null
);
CREATE TABLE IF NOT EXISTS Chief (
	People_id integer not null references People(id),
	Department_id integer not null references Department(id),
    constraint pk PRIMARY KEY key(People_id, Department_id)
);
/*
    Решение
*/
CREATE TABLE IF NOT EXISTS Employee (
	People_name varchar(40) not null references People(Name),
	Department_id integer not null references Department(id),
	Chief integer not null references Chief(People_id),
	constraint pk PRIMARY KEY key(Department_id, People_name)
);