package net.candidate.referee;

import java.io.*;
import java.sql.*;
import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import net.database.*;
import net.candidate.referee.model.Refapply;

public class RefereeApplyAction extends ActionSupport {
	
	private Refapply refapply;
	private String candidatename;
	
	public String execute()
	{
		try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int id=0;
			String passwd = "";
			String remail = "";
			String qry = "SELECT OnlineID, Ref1Email, Ref1Passwd FROM security where OnlineID=? AND Ref1Passwd=? AND Ref1Email=? union SELECT OnlineID, Ref2Email, Ref2Passwd FROM security where OnlineID=? AND Ref2Passwd=? AND Ref2Email=?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setInt(1, refapply.getOnlineid());
			pstmt.setString(2, refapply.getPassword());
			pstmt.setString(3, refapply.getEmail());
			pstmt.setInt(4, refapply.getOnlineid());
			pstmt.setString(5, refapply.getPassword());
			pstmt.setString(6, refapply.getEmail());
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
				passwd = result.getString(2);
				remail = result.getString(3);
			}
			boolean comparing = (id == 0); 			
			if (comparing == true)
			{			
				addActionError(getText("validate_Referee"));
		        return ERROR;
			}
			
			int RefID=0;
			String AlreadyApplied_qry = "SELECT RefID FROM Referee WHERE Email=? and App_OnlineID=?";
			pstmt = connect.prepareStatement(AlreadyApplied_qry);
			pstmt.setString(1, refapply.getEmail());
			pstmt.setInt(2, refapply.getOnlineid());
			result = pstmt.executeQuery();
			while(result.next())
			{
				RefID = result.getInt(1);
			}
			
			boolean comparing_appform = (RefID == 0); 			
			if (comparing_appform == false)
			{			
				addActionError(getText("validate_RefereeAlreadyapplied"));
		        return ERROR;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		setCandidatename(this.candidatename);
		return "success";
	}
	
	//getter and setter method for CandName variable//
	public String getCandidatename() {
		return candidatename;
	}
	
	public void setCandidatename(String candidatename) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			String AppName = "";
			ResultSet result = null;
			String qry = "Select Name from applicant where OnlineID = ?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setInt(1, refapply.getOnlineid());
			result = pstmt.executeQuery();
			{
			        while (result.next())
			        {
			        	AppName = result.getString(1);
			        	System.out.println(AppName);
			        	this.candidatename = AppName;
			        }
			 }		
			}
			  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
		
	public Refapply getRefapply() {
		return refapply;
	}	
	public void setRefapply(Refapply refapply) {
		this.refapply = refapply;
	}
}
