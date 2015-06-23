package net.candidate.application.model;

import com.opensymphony.xwork2.ActionSupport;

public class Apply extends ActionSupport{
	
	private String password;
	private String email;

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
	 public Apply()
	    {
	    }
}
