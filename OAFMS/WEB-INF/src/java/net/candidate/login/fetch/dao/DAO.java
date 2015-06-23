package net.candidate.login.fetch.dao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.naming.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import net.database.*;
import net.candidate.login.fetch.action.*;

public class DAO extends ActionSupport {
	
	public List<UserList> fetch()
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Tender Connection....");
			
			String query = "SELECT OnlineID, Name, Surname, DOB, Gender, Email, Timing FROM applicant";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			
			UserList userlist;
			List<UserList> list = new ArrayList<UserList>();
			while(result.next()){
				userlist = new UserList();
				userlist.setOnlineID(result.getInt(1));
				userlist.setName(result.getString(2));
				userlist.setSurname(result.getString(3));
				userlist.setDob(result.getString(4));
				userlist.setGender(result.getString(5));
				userlist.setEmail(result.getString(6));
				userlist.setTiming(result.getString(7));
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
