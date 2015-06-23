package net.security;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import net.database.*;

import javax.security.sasl.AuthenticationException;

import com.opensymphony.xwork2.ActionSupport;

public class SecurityServiceImpl extends ActionSupport implements SecurityService {
	private Map users;
	private static final String CAND_ROLE = "candidate";
	
	public SecurityServiceImpl(){
		users = new HashMap();
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int id;
			String pwd = "";
			String query = "Select OnlineID, AppPasswd from security";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			while (result.next()) {
			id = result.getInt(1);
			pwd = result.getString(2);
						 
			users.put(id, new User(id, pwd, new String[] {CAND_ROLE}));
			}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

	public User authenticate(int oid, String password)throws AuthenticationException {
		User user = (User) users.get(oid);
		User userpassword = (User) users.get(password);
		if (user == null) throw new AuthenticationException(getText("unknown_user"));
		boolean passwordIsValid = user.passwordMatch(password);
		if (!passwordIsValid) throw new AuthenticationException(getText("invalid_password"));
		return user;
	}
}