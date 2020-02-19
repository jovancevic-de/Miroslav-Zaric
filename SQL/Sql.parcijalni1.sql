insert into fakultet ( naziv,godina_osnivanja) values ("Filozofski", 1956);
insert into fakultet ( naziv,godina_osnivanja) values ("FTN", 1985);
insert into fakultet ( naziv,godina_osnivanja) values ("Umetnicki", 1943);
insert into fakultet ( naziv,godina_osnivanja) values ("PMF", 1999);
select* from fakultet;

insert into student (ime,prezime, godina_upisa,fakultet, kurs) values ("Pera", "Peric", 2015, "FTN", "Programiranje"); 
insert into student (ime,prezime, godina_upisa,fakultet, kurs) values ("Zika", "Zikic", 2010, "FTN", "WEB"); 
insert into student (ime,prezime, godina_upisa,fakultet, kurs) values ("Masa", "Vasilev", 2018, "PMF", "Matematika"); 
insert into student (ime,prezime, godina_upisa,fakultet, kurs) values ("Ivan", "Ivanovic", 2019, "FTN", "WEB"); 
select* from student;

insert into kurs (naziv, broj_ESPB, fakultet, student_id) values ("WEB", 8, "FTN", 1);
insert into kurs (naziv, broj_ESPB, fakultet, student_id) values ("WEB", 8, "FTN", 2);
insert into kurs (naziv, broj_ESPB, fakultet, student_id) values ("Programiranje", 8, "FTN", 3);
insert into kurs (naziv, broj_ESPB, fakultet, student_id) values ("Matematika", 6, "PMF", 4);

select* from student where godina_upisa= 2015;
select* from fakultet where godina < 1960;
select*from student where fakultet = "FTN";
select* from student where godina_upisa > 2016 and fakultet= "FTN";
select* from student where kurs= "WEB";


