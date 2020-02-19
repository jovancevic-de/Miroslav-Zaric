drop table if exists fakultet;

create table fakultet(
	
    id int auto_increment not null,
	naziv varchar(100) not null,
    godinaOsnivanja int not null,
    primary key (id)
)

drop table if exists student;

create table student(
	
    id int auto_increment not null,
	ime varchar(100) not null,
    prezime varchar(100) not null,
    godinaUpisa int not null,
    fakultetID int not null,
    primary key (id),
    foreign key (fakultetID) references fakultet (id)
    
)

drop table if exists kurs;

create table kurs(
	
    id int auto_increment not null,
	naziv varchar(100) not null,
	brojESPB int not null,
    fakultetID int not null,
    primary key (id),
    foreign key (fakultetID) references fakultet (id)
)

drop table if exists student_kurs;

create table student_kurs(

	id int auto_increment not null,
    studentID int not null,
    kursID int not null,
    primary key (id),
    foreign key (studentID) references student(id),
    foreign key (kursID) references kurs(id)
)
