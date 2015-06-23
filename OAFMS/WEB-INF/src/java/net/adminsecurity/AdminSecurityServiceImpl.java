package net.adminsecurity;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import net.database.*;

import javax.security.sasl.AuthenticationException;

import com.opensymphony.xwork2.ActionSupport;

public class AdminSecurityServiceImpl extends ActionSupport implements AdminSecurityService {
	private Map users;
	private static final String ADMIN_ROLE = "administrator";
	private static final String COMMITTEE_ROLE = "committee";
	
	public AdminSecurityServiceImpl(){
		users = new HashMap();
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			String adminusername = "";
			String pwd = "";
			String username = "";
			String upwd = "";
			String adminquery = "Select a.Username, a.Passwd, u.Username, u.Passwd from admin a, user u;";
			pstmt = connect.prepareStatement(adminquery);
			result = pstmt.executeQuery();
			while (result.next()) {
			adminusername = result.getString(1);
			pwd = result.getString(2);
			username = result.getString(3);
			upwd = result.getString(4);
						 
				users.put(adminusername, new AdminUser(adminusername, pwd, new String[] {ADMIN_ROLE, COMMITTEE_ROLE}));
				users.put(username, new AdminUser(username, upwd, new String[] {COMMITTEE_ROLE}));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}	
		
	}

	public AdminUser authenticate(String username, String password)throws AuthenticationException {
		AdminUser user = (AdminUser) users.get(username);
		AdminUser userpassword = (AdminUser) users.get(password);
		if (user == null) throw new AuthenticationException(getText("unknown_user"));
		boolean passwordIsValid = user.passwordMatch(password);
		if (!passwordIsValid) throw new AuthenticationException(getText("invalid_password"));
		return user;
	}
}