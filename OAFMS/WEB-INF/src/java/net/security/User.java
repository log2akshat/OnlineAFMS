package net.security;

import java.io.Serializable;

public class User implements Serializable {
	private int oid;
	private String password;
	private String[] roles;
	
	public User() {
	}
	
	public User(int id, String pwd, String[] assignedRoles) {
		oid  = id;
		password  = pwd;
		roles = assignedRoles;		
	}
	
  public int getOid() {
    return oid;
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
	
	public boolean isCandidate() {
		return hasRole("candidate");
	}	
}