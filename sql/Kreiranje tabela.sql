drop table if exists fakultet;

create table fakultet(
	id int(11) auto_increment not null,
    naziv varchar (50) not null,
    godina_osnivanja int (4) not null,
    primary key (id)
);

drop table if exists student;

create table student(
	idStudenta int(11) auto_increment not null,
    ime varchar (50) not null,
    prezime varchar (50) not null,
    godina_upisa int (4) not null,
    fakultet int(11) not null,
    primary key (idStudenta),
    foreign key (fakultet) references fakultet(id)
);

drop table if exists kurs;

create table kurs(
	idKursa int (11) auto_increment not null,
    naziv varchar (50) not null,
    broj_ESPB int (11) not null,
    fakultet int (11) not null,
    primary key (idKursa),
    foreign key (fakultet) references fakultet(id)
);

drop table if exists student_kurs;

create table student_kurs(
	id int(11) auto_increment not null,
    idStudenta int(11) not null,
    idKursa int (11) not null,
    primary key (id),
    foreign key (idStudenta) references student(idStudenta),
    foreign key (idKursa) references kurs(idKursa)
);
    
