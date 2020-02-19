package unittesting.parcijalni;

import org.mockito.Mockito;
import org.testng.Assert;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class StudentServiceTest {

	private StudentService studentService;
	private StudentRepository studentRepositoryMock;
	
	@BeforeClass
	public void setUp(){
		
		studentService = new StudentService();//instanciramo klasu koju testiramo
		studentRepositoryMock = Mockito.mock(StudentRepository.class);//Mockujemo repozitorijum (pogledati u klasi koji se testira sta dovlaci podatke iz baze,xml...)
		studentService.setStudentRepository(studentRepositoryMock);//setapujemo da servis koji se testira da poziva da poziva mock(repozitorijum)
	}
	
	
	@Test(expectedExceptions = NullPointerException.class)
	public void testWithException() {
		// arrange
		String brojIndeksa = "brojIndeksa"; 
		int cenaIspita = 1000;
		//ovde nismo morali da kreiramo usera jer nam vraca null
		Mockito.when(studentRepositoryMock.findByIndeks(brojIndeksa)).thenReturn(null);
		
		// act
		studentService.prijaviIspit(brojIndeksa, cenaIspita);//pozivamo metodu koju testiramo sa mockovanim podacima
		
		// assert
		// nema, ocekujemo exception
	}
	
	@Test
	public void testStudentNotActiv() {
		// arrange
		String brojIndeksa = "brojIndeksa"; 
		int cenaIspita = 1000;
		int novac = 2000;
		String ime = "Maja";
		String prezime = "Majic";
		boolean aktivan = false;
		Student student = new Student(ime, prezime, brojIndeksa, novac, aktivan);
		Mockito.when(studentRepositoryMock.findByIndeks(brojIndeksa)).thenReturn(student);
		
		// act
		//studentService.prijaviIspit(brojIndeksa, cenaIspita);//pozivamo metodu koju testiramo sa mockovanim podacima
		boolean res = studentService.prijaviIspit(brojIndeksa, cenaIspita);
		
		// assert
		Assert.assertEquals(res, false);
	}
	
	@Test
	public void testStudentNoMany() {
		// arrange
		String brojIndeksa = "brojIndeksa"; 
		int cenaIspita = 1000;
		int novac = 200;
		String ime = "Maja";
		String prezime = "Majic";
		boolean aktivan = false;
		Student student = new Student(ime, prezime, brojIndeksa, novac, aktivan);
		Mockito.when(studentRepositoryMock.findByIndeks(brojIndeksa)).thenReturn(student);
		
		// act
		//studentService.prijaviIspit(brojIndeksa, cenaIspita);//pozivamo metodu koju testiramo sa mockovanim podacima
		boolean res = studentService.prijaviIspit(brojIndeksa, cenaIspita);
		
		// assert
		Assert.assertEquals(res, false);
	
	}
	
	@Test
	public void testStudnet() {
		// arrange
		String brojIndeksa = "brojIndeksa"; 
		int cenaIspita = 1000;
		int novac = 2000;
		String ime = "Maja";
		String prezime = "Majic";
		boolean aktivan = false;
		Student student = new Student(ime, prezime, brojIndeksa, novac, aktivan);
		Mockito.when(studentRepositoryMock.findByIndeks(brojIndeksa)).thenReturn(student);
		
		// act
		//studentService.prijaviIspit(brojIndeksa, cenaIspita);//pozivamo metodu koju testiramo sa mockovanim podacima
		boolean res = studentService.prijaviIspit(brojIndeksa, cenaIspita);
		
		// assert
		Assert.assertEquals(res, true);
	
	}
	
	
	
}
