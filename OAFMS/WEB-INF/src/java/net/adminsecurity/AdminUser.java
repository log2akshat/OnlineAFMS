package net.adminsecurity;

import java.io.Serializable;

public class AdminUser implements Serializable {
	private String username;
	private String password;
	private String[] roles;
	
	public AdminUser() {
	}
	
	public AdminUser(String uname, String pwd, String[] assignedRoles) {
		username  = uname;
		password  = pwd;
		roles = assignedRoles;		
	}
	
  public String getUsername() {
    return username;
  }
  
  public String getPassword() {
	    return password;
	  }
  
	boolean passwordMatch(String pwd) {
		return password.equals(pwd);
	}

	public boolean hasRole(String role) {
		if (roles.length > 0) {
			for (int i=0; i<roles.length; i++) {
				if (role.equals(roles[i])) return true;
			}
		}
		return false;		
	}
	public boolean isAdministrator() {
		return hasRole("administrator");
	}	
	
	public boolean isCommitteemember() {
		return hasRole("committee");
	}	
}