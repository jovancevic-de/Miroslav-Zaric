package unittesting.parcijalni;

import java.io.IOException;
import org.testng.annotations.Test;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.doThrow;
import static org.mockito.Mockito.doReturn;
import static org.mockito.Matchers.anyInt;

import static org.mockito.Mockito.when;
import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertNull;
import static org.testng.Assert.assertTrue;
 

import java.util.Iterator;

import org.mockito.Mockito;
import org.testng.annotations.Test;


public class StudentServiceTest {

	@Test(expectedExceptions = NullPointerException.class) 
	public void testForNullPointerException() throws NullPointerException {
		
		StudentService studentService = new StudentService();
		// create and configure mock object
		StudentRepository mockedStudentRepository = mock(StudentRepository.class);

		// it throws NullPointerExc when the prijaviIspit(brojIndeksa, cenaIspitan) method is called
		doThrow(new NullPointerException()).when(mockedStudentRepository.findByIndeks("i10"));

		// call mocked method. It will throw IOException
		studentService.prijaviIspit("i10", 100);
	}
	
	
}
