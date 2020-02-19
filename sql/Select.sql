select * from student where godina_upisa = 2015;

select * from fakultet where godina_osnivanja<1960;

select student.*
from student 
join fakultet
on fakultet.id=student.fakultet
where fakultet.naziv="FTN";

select student.*
from student
join fakultet
on fakultet.id=student.fakultet
where fakultet.naziv="PMF" and student.godina_upisa > 2016;

select student.*
from student
join student_kurs
on student_kurs.idStudenta=student.idStudenta
join kurs
on kurs.idKursa=student_kurs.idKursa
where kurs.naziv = "WEB";

select kurs.naziv, count(student_kurs.idStudenta) as brojStuenata
from student
join student_kurs
on student_kurs.idStudenta=student.idStudenta
join kurs
on kurs.idKursa=student_kurs.idKursa 
group by kurs.naziv
having count(student_kurs.idStudenta);


