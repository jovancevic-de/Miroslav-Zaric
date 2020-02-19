package unittesting.parcijalni;

public class Student {
	
	private String ime;
	private String prezime;
	private String brojIndeksa;
	private int novac;
	private boolean aktivan;
	
	public Student() {
		
	}
	
	public Student(String ime, String prezime, String brojIndeksa, int novac, boolean aktivan) {
		super();
		this.ime = ime;
		this.prezime = prezime;
		this.brojIndeksa = brojIndeksa;
		this.novac = novac;
		this.aktivan = aktivan;
	}
	
	public String getIme() {
		return ime;
	}
	
	public void setIme(String ime) {
		this.ime = ime;
	}
	
	public String getPrezime() {
		return prezime;
	}
	
	public void setPrezime(String prezime) {
		this.prezime = prezime;
	}
	
	public String getBrojIndeksa() {
		return brojIndeksa;
	}
	
	public void setBrojIndeksa(String brojIndeksa) {
		this.brojIndeksa = brojIndeksa;
	}
	
	public int getNovac() {
		return novac;
	}
	
	public void setNovac(int novac) {
		this.novac = novac;
	}

	public boolean isAktivan() {
		return aktivan;
	}

	public void setAktivan(boolean aktivan) {
		this.aktivan = aktivan;
	}

}
