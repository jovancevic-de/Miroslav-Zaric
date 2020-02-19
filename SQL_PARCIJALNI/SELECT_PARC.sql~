/*1. zadatak*/

select*from student
where godinaUpisa>2015

/*2. zadatak*/

select*from fakultet 
where godinaOsnivanja < 1960

/*3. zadatak*/

select student.*, fakultet.naziv from student
join fakultet on fakultet.id = student.fakultetID
where naziv = 'FTN'

/*4. zadatak*/

select student.*, fakultet.naziv from student 
join fakultet on fakultet.id = student.fakultetID
where godinaUpisa>2016 and naziv = 'PMF'

/*5. zadatak*/

select student.*, kurs.naziv from student
join student_kurs on student.id= student_kurs.studentID
join kurs on kurs.id = student.fakultetID
where naziv = 'WEB'

/*6. zadatak*/

select count(*), kurs.naziv from student
join student_kurs on student.id = student_kurs.studentID
join kurs on kurs.id = student.fakultetID
group by kursID
