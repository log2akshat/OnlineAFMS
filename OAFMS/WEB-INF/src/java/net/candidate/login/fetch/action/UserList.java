package net.candidate.login.fetch.action;

public class UserList {
	int onlineID;
	String name;
	String surname;
	String dob;
	String gender;
	String email;
	String timing;
	
	
	public UserList() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserList(int onlineID, String name, String surname, String dob, String gender, String email, String timing)
	{
		super();
		this.onlineID = onlineID;
		this.name = name;
		this.surname = surname;
		this.dob = dob;
		this.gender = gender;
		this.email = email;
		this.timing = timing;
	}
	
	public int getOnlineID() {
		return onlineID;
	}
	public void setOnlineID(int onlineID) {
		this.onlineID = onlineID;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getTiming() {
		return timing;
	}
	public void setTiming(String timing) {
		this.timing = timing;
	}
}
