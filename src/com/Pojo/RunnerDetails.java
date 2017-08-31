package com.Pojo;

public class RunnerDetails {
	String FirstName;
	String Lastname;
	String Gender;
	String DateOfBirth;
	String Country;
	String Charity;
	String Target;
	String RaceKitOption;
	String event;
	int status;
	
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastname() {
		return Lastname;
	}
	public void setLastname(String lastname) {
		Lastname = lastname;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getDateOfBirth() {
		return DateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		DateOfBirth = dateOfBirth;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getCharity() {
		return Charity;
	}
	public void setCharity(String charity) {
		Charity = charity;
	}
	public String getTarget() {
		return Target;
	}
	public void setTarget(String target) {
		Target = target;
	}
	public String getRaceKitOption() {
		return RaceKitOption;
	}
	public void setRaceKitOption(String raceKitOption) {
		RaceKitOption = raceKitOption;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public RunnerDetails(String firstName, String lastname, String gender, String dateOfBirth, String country,
			String charity, String target, String raceKitOption, String event, int status) {
		super();
		FirstName = firstName;
		Lastname = lastname;
		Gender = gender;
		DateOfBirth = dateOfBirth;
		Country = country;
		Charity = charity;
		Target = target;
		RaceKitOption = raceKitOption;
		this.event = event;
		this.status = status;
	}
	
}
