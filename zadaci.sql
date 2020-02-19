select * from student;

select * from falkutet
where god_osnivanja < 1960;

select student.ime, student.prezime
from student join falkutet on student.studentId = falkutet.id
where naziv = 'FTN';

select student.ime, student.prezime
from student join falkutet on student.studentId = falkutet.id
where student.god_upisa > 2016;

select student.ime, student.prezime
from student_kurs join student on student_kurs.studentId = student.id
join kurs on kurs.id = student_kurs.kursId
where kurs.naziv = 'Matematika';





