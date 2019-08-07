package rs.ac.rentaboat;

public class User {
	private String first_name;
	private String last_name;
	private String email;
	private String username;
	private String password;
	
	public User() {}
	public User(String _first_name, String _last_name,String _email,String _username,String _password) {
		this.first_name = _first_name;
		this.last_name = _last_name;
		this.email = _email;
		this.username = _username;
		this.password = _password;
	}
	public String getEmail() {
		return email;
	}
	public String getFirst_name() {
		return first_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public String getPassword() {
		return password;
	}
	public String getUsername() {
		return username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Override
	public String toString() {
		return "[ User:"
				+ "Ime: "      + this.first_name
				+ "Prezime: "  + this.last_name
				+ "Email: "    + this.email 
				+ "Username: " + this.username 
				+ "Password: " + this.password
				+ "]";
	}
}
