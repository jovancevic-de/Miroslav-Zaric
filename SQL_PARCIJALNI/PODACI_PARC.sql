insert into fakultet (naziv, godinaOsnivanja) values ('FTN', 1960);
insert into fakultet (naziv, godinaOsnivanja) values ('DIF', 1920);
insert into fakultet (naziv, godinaOsnivanja) values ('PMF', 1935);
insert into fakultet (naziv, godinaOsnivanja) values ('Filozofski', 1900)

insert into student (ime, prezime, godinaUpisa, fakultetID) values ('Stefan', 'Madic', 2012, 2);
insert into student (ime, prezime, godinaUpisa, fakultetID) values ('Pera', 'Peric', 2019, 3);
insert into student (ime, prezime, godinaUpisa, fakultetID) values ('Mika', 'Mikic', 2010, 1);
insert into student (ime, prezime, godinaUpisa, fakultetID) values ('Laza', 'Lazic', 2000, 1);
insert into student (ime, prezime, godinaUpisa, fakultetID) values ('Maja', 'Markovic', 2015, 3);

insert into kurs (naziv, brojESPB, fakultetID) values ('WEB', 55, 1);
insert into kurs (naziv, brojESPB, fakultetID) values ('FRONTEND', 100, 1);
insert into kurs (naziv, brojESPB, fakultetID) values ('Trener', 68, 2);
insert into kurs (naziv, brojESPB, fakultetID) values ('Francuski', 70, 4);
insert into kurs (naziv, brojESPB, fakultetID) values ('TestDev', 80, 1);
insert into kurs (naziv, brojESPB, fakultetID) values ('KursBIO', 77, 3);

insert into student_kurs (studentID, kursID) values (1, 1);
insert into student_kurs (studentID, kursID) values (1, 2);
insert into student_kurs (studentID, kursID) values (7, 4);
insert into student_kurs (studentID, kursID) values (6, 4);
insert into student_kurs (studentID, kursID) values (8, 3);
insert into student_kurs (studentID, kursID) values (2, 2);
insert into student_kurs (studentID, kursID) values (7, 3);