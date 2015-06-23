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

public class RefereeDAO extends ActionSupport{
	
	public List<RefereeList> fetch(int refid)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Assessment Report View Connection....");
			
			String query = "SELECT * FROM Referee WHERE RefID=?";
			pstmt = connect.prepareStatement(query);
			pstmt.setInt(1, refid);
			result = pstmt.executeQuery();
			
			RefereeList refereelist;
			List<RefereeList> list = new ArrayList<RefereeList>();
			while(result.next()){
				refereelist = new RefereeList();
				refereelist.setRefID(result.getInt(1));
				refereelist.setOnlineID(result.getInt(2));
				refereelist.setCandname(result.getString(3));
				refereelist.setKnowing(result.getString(4));
				refereelist.setGi(result.getString(5));
				refereelist.setGsk(result.getString(6));			
				refereelist.setOap(result.getString(7));
				refereelist.setMfr(result.getString(8));
				refereelist.setMa(result.getString(9));
				refereelist.setEos(result.getString(10));
				refereelist.setPsa(result.getString(11));
				refereelist.setCs(result.getString(12));
				refereelist.setSc(result.getString(13));
				refereelist.setCit(result.getString(14));
				refereelist.setStrength(result.getString(15));
				refereelist.setWeaknesses(result.getString(16));
				refereelist.setOrder(result.getString(17));
				refereelist.setRecommending(result.getString(18));
				refereelist.setGrades(result.getString(19));
				refereelist.setGradesifno(result.getString(20));
				refereelist.setInterest(result.getString(21));
				refereelist.setExcc(result.getString(22));				
				refereelist.setSummary(result.getString(23));
				refereelist.setRefname(result.getString(24));
				refereelist.setDesignation(result.getString(25));
				refereelist.setInstitute(result.getString(26));
				refereelist.setCity(result.getString(27));
				refereelist.setPin(result.getString(28));				
				refereelist.setMobilenum(result.getString(29));
				refereelist.setTelephone(result.getString(30));
				refereelist.setEmail(result.getString(31));
				refereelist.setRefTiming(result.getString(32));
				list.add(refereelist);
			}
				
		return list;		
		
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	public boolean refid1(int oid, String Email)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL 1st Referee ID Connection....");

			String Ref1Query = "Select RefID from Referee where App_OnlineID=? and Email=?";
			pstmt = connect.prepareStatement(Ref1Query);
			pstmt.setInt(1,oid);
			pstmt.setString(2,Email);
			result = pstmt.executeQuery();
			return true;
			
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
}