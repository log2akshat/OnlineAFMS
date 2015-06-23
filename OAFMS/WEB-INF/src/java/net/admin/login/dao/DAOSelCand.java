package net.admin.login.dao;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.admin.login.action.RefereeList;
import net.database.*;
import net.security.User;
import net.candidate.login.action.*;

public class DAOSelCand extends ActionSupport{
	
	public List<UserList> fetch(int offset)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Selected Candidate View Connection....");
			
			//String query = "SELECT OnlineID, Name, DOB, Gender, Email, Telephone, EmailSent FROM applicant WHERE Status='Selected' ORDER BY OnlineID limit 5 offset "+offset;
			String query = "SELECT OnlineID, Name, DOB, Gender, Email, Telephone, EmailSent FROM applicant WHERE Status='Selected' ORDER BY OnlineID";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			
			UserList userlist;
			List<UserList> list = new ArrayList<UserList>();
			while(result.next()){
				userlist = new UserList();
				userlist.setOnlineID(result.getInt(1));
				userlist.setName(result.getString(2));
				userlist.setDOB(result.getString(3));
				userlist.setGender(result.getString(4));
				userlist.setEmail(result.getString(5));			
				userlist.setTelephone(result.getString(6));
				userlist.setEmailSent(result.getString(7));
				list.add(userlist);
			}
				
		return list;		
		
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
}
