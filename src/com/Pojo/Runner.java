package com.Pojo;

public class Runner {
	String marathon;
	String event;
	int time;
	public Runner(String marathon, String event, int time) {
		super();
		this.marathon = marathon;
		this.event = event;
		this.time = time;
	}
	public String getMarathon() {
		return marathon;
	}
	public void setMarathon(String marathon) {
		this.marathon = marathon;
	}
	public String getEvent() {
		return event;
	}
	public void setEvent(String event) {
		this.event = event;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
}
