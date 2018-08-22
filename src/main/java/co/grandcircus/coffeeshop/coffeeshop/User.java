package co.grandcircus.coffeeshop.coffeeshop;

public class User {

	private String firstname;
	private String lastname;
	private String password;
	private String email;
	private Integer phonenumber;

	public User() {
	}

	public User(String firstname, String lastname, String email, String password,Integer phonenumber) {
		this.setFirstname(firstname);
		this.setLastname(lastname);
		this.setEmail(email);
		this.setPassword(password);
		this.setPhonenumber(phonenumber);
		
	}
	

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(Integer phonenumber) {
		this.phonenumber = phonenumber;
	}
}