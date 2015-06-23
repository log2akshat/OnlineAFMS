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

public class DAOOneReport extends ActionSupport{
	
	public List<RefereeList> fetch(int offset)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Selected Candidate View Connection....");
			
			//String query = "Select RefID, App_OnlineID, CandName, Name from Referee group by App_OnlineID having count(App_OnlineID)=1 limit 5 offset "+offset;
			String query = "Select RefID, App_OnlineID, CandName, Name from Referee group by App_OnlineID having count(App_OnlineID)=1";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			
			RefereeList refereelist;
			List<RefereeList> list = new ArrayList<RefereeList>();
			while(result.next()){
				refereelist = new RefereeList();
				refereelist.setRefID(result.getInt(1));
				refereelist.setOnlineID(result.getInt(2));
				refereelist.setCandname(result.getString(3));
				refereelist.setRefname(result.getString(4));			
				list.add(refereelist);
			}
				
		return list;		
		
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
}
