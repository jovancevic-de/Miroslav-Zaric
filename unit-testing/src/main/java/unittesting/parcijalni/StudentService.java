package unittesting.student;

public class StudentService {
	
	private StudentRepository studentRepository;
	
	public boolean prijaviIspit(String brojIndeksa, int cenaIspita) {
		
		Student student = studentRepository.findByIndeks(brojIndeksa);
		
		if (student == null) {
			throw new NullPointerException();
		}
		
		if (!student.isAktivan()) {
			return false;
		}
		
		if (cenaIspita > student.getNovac()) {
			return false;
		}
		
		student.setNovac(student.getNovac() - cenaIspita);
		return true;
	}

	public StudentRepository getStudentRepository() {
		return studentRepository;
	}

	public void setStudentRepository(StudentRepository studentRepository) {
		this.studentRepository = studentRepository;
	}
	
}
