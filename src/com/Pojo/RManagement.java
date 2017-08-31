package com.Pojo;

public class RManagement {
	String firstname,lastname,email,regstatus;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegstatus() {
		return regstatus;
	}
	public void setRegstatus(String regstatus) {
		this.regstatus = regstatus;
	}
	public RManagement(String firstname, String lastname, String email, String regstatus) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.regstatus = regstatus;
	}
	

}
