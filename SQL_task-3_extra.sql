CREATE TABLE IF NOT EXISTS Employee (
	id serial PRIMARY KEY,
	Name varchar(40) not null
);
CREATE TABLE IF NOT EXISTS Department (
	id serial PRIMARY KEY,
	name varchar(40) not null
);
CREATE TABLE IF NOT EXISTS Chief (
	Employee_name varchar(40) not null references Employee(Name),
	Department_id integer not null references Department(id),
    constraint pk PRIMARY KEY key(Employee_name, Department_id)
);
CREATE TABLE IF NOT EXISTS Employee_Department (
	Employee_name varchar(40) not null references Employee(Name),
	Department_id integer not null references Department(id),
	Chief varchar(40) references Department(id),
	constraint pk PRIMARY KEY key(Department_id, Employee_name)
);