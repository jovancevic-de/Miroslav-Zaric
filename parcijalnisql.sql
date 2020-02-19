drop table if exists student;

create table student (	
				studentID int not null auto_increment,
                ime varchar(50),
                prezime varchar(50),
                godina_upisa int,
                fakultet int,
                primary key(studentID),
                foreign key(fakultet) references fakultet(fakultetID)
);

drop table if exists fakultet;

create table fakultet(
				fakultetID int not null auto_increment,
                naziv varchar(50),
                god_osnivanja int,
                primary key(fakultetID)
);

drop table if exists kurs;

create table kurs(
				kursID int auto_increment not null,
                naziv varchar(50),
                broj_ESPB int,
                fakultet int,
                primary key(kursID),
                foreign key(fakultet) references fakultet(fakultetID)
);

drop table if exists student_kurs;

create table student_kurs (
				student_kursID int auto_increment not null,
                student_id int,
                kurs_id int,
                primary key(student_kursID),
                foreign key(student_id) references student(studentID),
                foreign key(kurs_id) references kurs(kursID)
);

insert into fakultet(naziv, god_osnivanja) values ("PMF", 1970);
insert into fakultet(naziv, god_osnivanja) values ("FTN", 1950);
insert into fakultet(naziv, god_osnivanja) values ("PP", 1980);
insert into student(ime, prezime, godina_upisa, fakultet) values ("Ime1", "Prezime1", 2015, 2);
insert into student(ime, prezime, godina_upisa, fakultet) values ("Ime2", "Prezime2", 2017, 1);
insert into student(ime, prezime, godina_upisa, fakultet) values ("Ime3", "Prezime3", 2015, 1);
insert into kurs(naziv, broj_ESPB, fakultet) values ("WEB", 10, 2);
insert into kurs(naziv, broj_ESPB, fakultet) values ("Kurs2", 6, 2);
insert into kurs(naziv, broj_ESPB, fakultet) values ("Kurs3", 5, 1);
insert into student_kurs(student_id, kurs_id) values (2,1);
insert into student_kurs(student_id, kurs_id) values (3,2);
insert into student_kurs(student_id, kurs_id) values (4,3);

#select * from student where godina_upisa = 2015;
#select * from fakultet where god_osnivanja<1960;
#select * from student join fakultet on student.fakultet = fakultet.fakultetID where fakultet.naziv = "FTN";
#select * from student join fakultet on student.fakultet = fakultet.fakultetID where student.godina_upisa>2016 and fakultet.naziv = "PMF";
#select * from student join student_kurs on student.studentID = student_kurs.student_id join kurs on student_kurs.student_kursID = kurs.kursID where kurs.naziv = "WEB";
select count(*) from student join student_kurs sk on student.studentID = sk.student_kursID join kurs on student_kurs.student_kursID = kurs.kursID;