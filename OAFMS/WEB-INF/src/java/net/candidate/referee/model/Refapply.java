package net.candidate.referee.model;

import com.opensymphony.xwork2.ActionSupport;

public class Refapply extends ActionSupport{
	
	private int onlineid;	
	private String password;
	private String email;
	
	public int getOnlineid() {
		return onlineid;
	}
	public void setOnlineid(int onlineid) {
		this.onlineid = onlineid;
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
	 public Refapply()
	    {
	    }
}
