package unittesting.parcijalni;

import org.mockito.Mockito;
import org.testng.annotations.BeforeMethod;

public class StudentServiceTest {

	private StudentService userService;
	private StudentRepository repoMock;
	
	@BeforeMethod
	public void setUp() {
		userService = new StudentService();
		repoMock = Mockito.mock(StudentRepository.class);

	}
	}
