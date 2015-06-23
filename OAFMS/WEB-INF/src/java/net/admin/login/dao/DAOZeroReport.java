package net.admin.login.dao;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.admin.login.action.RefereeList;
import net.database.*;
import net.security.User;
import net.candidate.login.action.*;

public class DAOZeroReport extends ActionSupport implements ServletRequestAware{
	
	private HttpServletRequest request;
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	
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
			
			//String query = "SELECT OnlineID, Name, Email, Telephone FROM applicant a WHERE (select count(*) from Referee r where r.App_OnlineID = a.OnlineID) = 0 limit 5 offset "+offset;
			String query = "SELECT OnlineID, Name, Email, Telephone FROM applicant a WHERE (select count(*) from Referee r where r.App_OnlineID = a.OnlineID) = 0";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			
			UserList userlist;
			List<UserList> list = new ArrayList<UserList>();
			while(result.next()){
				userlist = new UserList();
				userlist.setOnlineID(result.getInt(1));
				userlist.setName(result.getString(2));
				userlist.setEmail(result.getString(3));			
				userlist.setTelephone(result.getString(4));
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
