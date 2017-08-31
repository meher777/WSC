package com.Pojo;

public class Sponsor {
	String charity;
	String logo;
	String description;
	String sponsorship;
	String amount;

	public String getCharity() {
		return charity;
	}

	public void setCharity(String charity) {
		this.charity = charity;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSponsorship() {
		return sponsorship;
	}

	public void setSponsorship(String sponsorship) {
		this.sponsorship = sponsorship;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public Sponsor(String charity, String logo, String description, String sponsorship, String amount) {
		super();
		this.charity = charity;
		this.logo = logo;
		this.description = description;
		this.sponsorship = sponsorship;
		this.amount = amount;
	}

	

}
