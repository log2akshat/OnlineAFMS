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

public class DAO extends ActionSupport{
	
	public List<UserList> fetch()
	{
		Connection connect = null;
		ResultSet result = null;
		PreparedStatement pstmt = null;
		
		DBConnection getConnect = new DBConnection();
		
		try
		{
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Candidate Combined Profile View Connection....");
			
			String query = "SELECT * FROM (SELECT a.*, s.Ref1Email, s.Ref1Passwd, s.Ref2Email, s.Ref2Passwd, s.AppPasswd FROM applicant a, security s WHERE a.OnlineID=s.OnlineID) b";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			
			UserList userlist;
			List<UserList> list = new ArrayList<UserList>();
			while(result.next()){
				userlist = new UserList();
				userlist.setOnlineID(result.getInt(1));
				userlist.setName(result.getString(2));
				//userlist.setSurname(result.getString(3));
				userlist.setDOB(result.getString(3));
				userlist.setGender(result.getString(4));
				userlist.setNationality(result.getString(5));
				userlist.setEmail(result.getString(6));			
				userlist.setCAddress(result.getString(7));
				userlist.setCPin(result.getString(8));
				userlist.setCCity(result.getString(9));
				userlist.setCState(result.getString(10));
				userlist.setTelephone(result.getString(11));
				userlist.setPAddress(result.getString(12));
				userlist.setPPin(result.getString(13));
				userlist.setPCity(result.getString(14));
				userlist.setPermanentState(result.getString(15));
				userlist.setCategory(result.getString(16));
				userlist.setEdu_XthStd(result.getString(17));
				userlist.setEdu_XthStd_Institute(result.getString(18));
				userlist.setEdu_XthStd_Board(result.getString(19));
				userlist.setEdu_XthStd_Year(result.getString(20));
				userlist.setEdu_XthStd_Grade(result.getString(21));
				userlist.setEdu_XthStd_Pc(result.getString(22));				
				userlist.setEdu_XIIthStd(result.getString(23));
				userlist.setEdu_XIIthStd_Institute(result.getString(24));
				userlist.setEdu_XIIthStd_Board(result.getString(25));
				userlist.setEdu_XIIthStd_Year(result.getString(26));
				userlist.setEdu_XIIthStd_Grade(result.getString(27));
				userlist.setEdu_XIIthStd_Pc(result.getString(28));				
				userlist.setEdu_UG(result.getString(29));
				userlist.setEdu_UG_Institute(result.getString(30));
				userlist.setEdu_UG_Board(result.getString(31));
				userlist.setEdu_UG_Year(result.getString(32));
				userlist.setEdu_UG_Grade(result.getString(33));
				userlist.setEdu_UG_Pc(result.getString(34));
				userlist.setEdu_PG(result.getString(35));
				userlist.setEdu_PG_Institute(result.getString(36));
				userlist.setEdu_PG_Board(result.getString(37));
				userlist.setEdu_PG_Year(result.getString(38));
				userlist.setEdu_PG_Grade(result.getString(39));
				userlist.setEdu_PG_Pc(result.getString(40));				
				userlist.setPresentcourse(result.getString(41));
				userlist.setCoursecompyear(result.getString(42));
				userlist.setReferee1(result.getString(43));
				userlist.setReferee2(result.getString(44));
				userlist.setReason(result.getString(45));
				userlist.setAppliedbefore1(result.getString(46));
				userlist.setAppliedbefore2(result.getString(47));
				userlist.setInterest(result.getString(48));
				userlist.setGQ_Subject(result.getString(49));
				userlist.setGQ_Project(result.getString(50));
				userlist.setGQ_Awards(result.getString(51));
				userlist.setGQ_Result(result.getString(52));
				userlist.setWrittenTestCall(result.getString(53));
				userlist.setStatus(result.getString(54));
				userlist.setPrintPDF(result.getString(55));
				userlist.setEmailSent(result.getString(56));
				userlist.setTiming(result.getString(57));
				userlist.setRef1Email(result.getString(58));
				userlist.setRef1Passwd(result.getString(59));
				userlist.setRef2Email(result.getString(60));
				userlist.setRef2Passwd(result.getString(61));
				userlist.setAppPasswd(result.getString(62));
				list.add(userlist);
			}
				
		return list;		
		
		}
		
		catch(Exception e){
			System.out.println(e);
		}
		
		finally {
			// Close the connections...
			getConnect.closeCon(connect, result, pstmt);
		}
		return null;
	}
	
	public List<RefereeList> fetchreferee()
	{
		Connection connect = null;
		ResultSet result = null;
		PreparedStatement pstmt = null;
		
		DBConnection getConnect = new DBConnection();
		
		try
		{
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Assessment Report View Connection....");
			
			String query = "SELECT * FROM Referee";
			pstmt = connect.prepareStatement(query);
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
		
		finally {
			// Close the connections...
			getConnect.closeCon(connect, result, pstmt);
		}
		return null;
	}
}
