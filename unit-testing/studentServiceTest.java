package unittesting.parcijalni;

import static org.testng.Assert.assertEquals;

import org.junit.Test;
import org.mockito.Mockito;
import org.testng.annotations.BeforeMethod;

public class studentServiceTest {

	StudentService studentService;
	StudentRepository studentRepoMock;
	
	@BeforeMethod
	public void priprema() {
		studentService = new StudentService();
		
		studentRepoMock = Mockito.mock(StudentRepository.class);
		
		studentService.setStudentRepository(studentRepoMock);
	}
	
	@Test(expected = NullPointerException.class)
	public void testWithException() {
		
		Mockito.when(studentRepoMock.findByIndeks("123")).thenReturn(null);
		
		studentService.prijaviIspit("123", 200);
	}
	
	@Test
	public void studentNotActive() {
		Student studentTest = new Student("Pera", "Peric", "123", 200, false);
		
		Mockito.when(studentRepoMock.findByIndeks("123")).thenReturn(studentTest);
		
		boolean rez = studentService.prijaviIspit("123", 200);
		
		assertEquals(false, rez );
		
	}
	
	@Test
	public void studentDoesntHaveMoney(){
		Student studentTest = new Student("Pera", "Peric", "123", 100, false);
		Mockito.when(studentRepoMock.findByIndeks("123")).thenReturn(studentTest);
		
		boolean rez = studentService.prijaviIspit("123", 200);
		assertEquals(false, rez );
	}
	
	@Test
	public void prijavaIspitaTest(){
		Student studentTest = new Student("Pera", "Peric", "123", 200, true);
		Mockito.when(studentRepoMock.findByIndeks("123")).thenReturn(studentTest);
		
		boolean rez = studentService.prijaviIspit("123", 200);
		assertEquals(true, rez);
	}
	
}
