insert into fakultet (naziv, godina_osnivanja) values ("FTN", 1960);
insert into fakultet (naziv, godina_osnivanja) values ("PMF", 1966);
insert into fakultet (naziv, godina_osnivanja) values ("Ekonomski fakultet", 1980);
insert into fakultet (naziv, godina_osnivanja) values ("Visa poslovna", 1959);

insert into student (ime, prezime, godina_upisa, fakultet) values ("Marko", "Markovic", 2015, 1);
insert into student (ime, prezime, godina_upisa, fakultet) values ("Mirko", "Miric", 2015, 2);
insert into student (ime, prezime, godina_upisa, fakultet) values ("Darko", "Daric", 2014, 3);
insert into student (ime, prezime, godina_upisa, fakultet) values ("Maja", "Majic", 2015, 1);
insert into student (ime, prezime, godina_upisa, fakultet) values ("Mina", "Majic", 2016, 1);
insert into student (ime, prezime, godina_upisa, fakultet) values ("Mina", "Majic", 2017, 2);

insert into kurs (naziv, broj_ESPB, fakultet) values ("Test", 6, 1);
insert into kurs (naziv, broj_ESPB, fakultet) values ("Java", 8, 1);
insert into kurs (naziv, broj_ESPB, fakultet) values ("Informacione tehnologije", 6, 1);
insert into kurs (naziv, broj_ESPB, fakultet) values ("Test1", 8, 1);
insert into kurs (naziv, broj_ESPB, fakultet) values ("WEB", 8, 1);

insert into student_kurs (idStudenta, idKursa) values (1, 1);
insert into student_kurs (idStudenta, idKursa) values (2, 2);
insert into student_kurs (idStudenta, idKursa) values (3, 3);
insert into student_kurs (idStudenta, idKursa) values (4, 4);
insert into student_kurs (idStudenta, idKursa) values (5, 5);
