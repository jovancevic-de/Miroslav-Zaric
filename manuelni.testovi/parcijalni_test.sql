drop table if exists fakultet;

create table fakultet(
id integer not null auto_increment,
naziv varchar(50) not null,
godina_osnivanja integer not null,
primary key(id)
);
