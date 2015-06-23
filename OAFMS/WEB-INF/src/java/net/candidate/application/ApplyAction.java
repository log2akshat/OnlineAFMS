package net.candidate.application;

import java.io.*;
import java.sql.*;
import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import net.database.*;
import net.candidate.application.model.Apply;

public class ApplyAction extends ActionSupport {
	
	private Apply apply;
	private String candidatename;
	private List state = new ArrayList();
	private List city = new ArrayList();
	
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
			String qry = "SELECT id FROM Register WHERE AppEmail=? && RegPasswd=?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setString(1, apply.getEmail());
			pstmt.setString(2, apply.getPassword());
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			System.out.println(id);
			boolean comparing = (id == 0); 
			
			if (comparing == true)
			{			
				addActionError(getText("validate_notRegistered"));
		        return ERROR;
			}
			
			int OnlineID=0;
			String AlreadyApplied_qry = "SELECT OnlineID FROM applicant WHERE Email=?";
			pstmt = connect.prepareStatement(AlreadyApplied_qry);
			pstmt.setString(1, apply.getEmail());
			result = pstmt.executeQuery();
			while(result.next())
			{
				OnlineID = result.getInt(1);
			}
			System.out.println(OnlineID);
			boolean comparing_appform = (OnlineID == 0); 
			
			if (comparing_appform == false)
			{			
				addActionError(getText("validate_alreadyapplied"));
		        return ERROR;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		setCandidatename(this.candidatename);
		setState(this.state);
		setCity(this.city);
		return "success";
	}
	
	//getter and setter method for Applicant Name variable//
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
			String qry = "Select AppName from Register where AppEmail = ?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setString(1, apply.getEmail());
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
	
	//getter and setter method for state variable//
	public List getState() {
		return state;
	}
	
	public List getCity() {
		return city;
	}
	
	public void setState(List state) {
	//Implementation of the application specific logic to retrieve the data from the database//
		try 
		{
		Connection connect = null;
		PreparedStatement pstmt = null;
		DBConnection getConnect = new DBConnection();
		connect = getConnect.getCon();
		
		int StateID = 0;
		String State = "";
		ResultSet result_state = null;
		String Stateqry = "Select * from state";
		pstmt = connect.prepareStatement(Stateqry);
		result_state = pstmt.executeQuery();
		{
		        while (result_state.next())
		        {
		            StateID = result_state.getInt(1);    
		        	State = result_state.getString(2);
		        	System.out.println(StateID + ":" + State);
		        	state.add(State);
		        }
		 }		
		}
		  
	 catch (SQLException e) {
		e.printStackTrace();
	 }	
	}
	
	public void setCity(List city) {
		//Implementation of the application specific logic to retrieve the data from the database//
			try 
			{
			Connection connect = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			String City = "";
			ResultSet result_city = null;
			String Cityqry = "Select CityName from City";
			pstmt = connect.prepareStatement(Cityqry);
			result_city = pstmt.executeQuery();
			{
			        while (result_city.next())
			        {
			            City = result_city.getString(1);
			        	city.add(City);
			        }
			 }		
			}
			  
		 catch (SQLException e) {
			e.printStackTrace();
		 }	
		}
		
	public Apply getApply() {
		return apply;
	}	
	public void setApply(Apply apply) {
		this.apply = apply;
	}
}