package com.Pojo;

public class VolDetails {
	String firstname;
	String lastname;
	String country;
	String gender;
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
	public String getCountry() {
		return country;
	}
	public VolDetails(String firstname, String lastname, String country, String gender) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.country = country;
		this.gender = gender;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
}
