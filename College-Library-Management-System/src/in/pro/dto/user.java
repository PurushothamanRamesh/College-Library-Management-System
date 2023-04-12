package in.pro.dto;

import java.io.Serializable;

public class user implements Serializable {

	private Integer id;


	private String name;
	private String email;
	private String contactNumber;
	private String password;
	private String department;

	public user() {

	}


	public user( Integer id,String name, String email, String contactNumber, String password, String department) {
		super();
		this.id=id;
		this.name = name;
		this.email = email;
		this.contactNumber = contactNumber;
		this.password = password;
		this.department = department;
	}

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getContactNumber() {
		return contactNumber;
	}


	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	@Override
	public String toString() {
		return "Student [name=" + name + ", email=" + email + ", contactNumber=" + contactNumber + ",password="+password+"]";
	}


}
