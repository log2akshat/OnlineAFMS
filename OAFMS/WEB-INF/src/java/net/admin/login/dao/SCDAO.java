package net.admin.login.dao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.security.User;
import net.admin.login.action.*;
import net.admin.login.action.committee.*;

public class SCDAO extends ActionSupport{
	
	public List<UserList> fetch(String scuname)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Screening Committee Connection....");
			
			String query = "SELECT * FROM user WHERE Username=?";
			pstmt = connect.prepareStatement(query);
			pstmt.setString(1, scuname);
			result = pstmt.executeQuery();
			
			UserList userlist;
			List<UserList> list = new ArrayList<UserList>();
			while(result.next()){
				userlist = new UserList();
				userlist.setID(result.getInt(1));
				userlist.setName(result.getString(2));
				userlist.setUsername(result.getString(3));
				userlist.setEmail(result.getString(4));			
				userlist.setPasswd(result.getString(5));
				list.add(userlist);
			}
				
		return list;		
		
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public List<UserList> fetchSC()
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Combined Screening Committee Connection....");
			
			String query = "SELECT * FROM user ORDER BY ID";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			
			UserList userlist;
			List<UserList> list = new ArrayList<UserList>();
			while(result.next()){
				userlist = new UserList();
				userlist.setID(result.getInt(1));
				userlist.setName(result.getString(2));
				userlist.setUsername(result.getString(3));
				userlist.setEmail(result.getString(4));			
				userlist.setPasswd(result.getString(5));
				list.add(userlist);
			}
				
		return list;		
		
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	/** Candidate Profile Updation Mechanism **/
	public boolean update(String Name, String Email, String scuname)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Screening Committee UPDATE Connection....");

			String UpdateQuery = "UPDATE user SET Name=?, Email=? WHERE Username=?";
			pstmt = connect.prepareStatement(UpdateQuery);
			
			pstmt.setString(1, Name);
			pstmt.setString(2, Email);
			pstmt.setString(3, scuname);
			pstmt.executeUpdate();
			return true;
			
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

}