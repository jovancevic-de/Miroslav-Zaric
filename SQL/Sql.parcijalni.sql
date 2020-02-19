drop table if exists student;
create table student (
id int not null auto_increment,
ime varchar(50),
prezime varchar(50),
godina_upisa int,
fakultet varchar(50),
kurs varchar (20),
primary key(id)
);

drop table if exists kurs;
create table kurs (
id int not null auto_increment,
naziv varchar (20),
broj_ESPB int,
fakultet varchar (50),
student_id int,
primary key (id)
);

drop table if exists fakultet;
create table fakultet (
id int not null auto_increment,
naziv varchar (50),
godina_osnivanja int,
primary key (id)
);

drop table if exists kurs_student;
create table kurs_student(
id int not null auto_increment,
kurs_id int,
student_id int,
primary key (id),
foreign key (kurs_id) references kurs (id),
foreign key (student_id) references student (id)
);