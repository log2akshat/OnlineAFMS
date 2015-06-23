package net.candidate.login.dao;

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
import net.candidate.login.action.*;
import net.candidate.registration.model.Register;

public class DAO extends ActionSupport{
	
	public List<UserList> fetch(int oid)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Candidate Profile View Connection....");
			
			String query = "SELECT * FROM (SELECT a.*, s.Ref1Email, s.Ref1Passwd, s.Ref2Email, s.Ref2Passwd, s.AppPasswd FROM applicant a, security s WHERE a.OnlineID=s.OnlineID) b WHERE b.OnlineID=?";
			pstmt = connect.prepareStatement(query);
			pstmt.setInt(1, oid);
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
		return null;
	}
	
	/** Candidate Profile Updation Mechanism **/
	public boolean update(String Name, String DOB, String Gender, String Nationality, String Email, String CAddress, String CPin, String CCity, String CState, String Telephone, String PAddress, String PPin, String PCity, String PermanentState, String Category, String Edu_XthStd, String Edu_XthStd_Institute, String Edu_XthStd_Board, String Edu_XthStd_Year, String Edu_XthStd_Grade, String Edu_XthStd_Pc, String Edu_XIIthStd, String Edu_XIIthStd_Institute, String Edu_XIIthStd_Board, String Edu_XIIthStd_Year, String Edu_XIIthStd_Grade, String Edu_XIIthStd_Pc, String Edu_UG, String Edu_UG_Institute, String Edu_UG_Board, String Edu_UG_Year, String Edu_UG_Grade, String Edu_UG_Pc, String Edu_PG, String Edu_PG_Institute, String Edu_PG_Board, String Edu_PG_Year, String Edu_PG_Grade, String Edu_PG_Pc, String Presentcourse, String Coursecompyear, String Referee1, String Referee2, String Reason, String Appliedbefore1, String Appliedbefore2, String Interest, String GQ_Subject, String GQ_Project, String GQ_Awards, String GQ_Result, String Ref1Email, String Ref2Email, int oid, int oid1)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL APPLICANT PROFILE UPDATE Connection....");

			String UpdateQuery = "UPDATE applicant a, security s SET a.Name=?, a.DOB=?, a.Gender=?, a.Nationality=?, a.Email=?, a.CAddress=?, a.CPin=?, a.CCity=?, a.CState=?, a.Telephone=?, a.PAddress=?, a.PPin=?, a.PCity=?, a.PState=?, a.Category=?, a.XthStd=?, a.Xth_School=?, a.Xth_Board=?, a.Xth_Year=?, a.Xth_Grade=?, a.Xth_Pc=?, a.XIIthStd=?, a.XIIth_School=?, a.XIIth_Board=?, a.XIIth_Year=?, a.XIIth_Grade=?, a.XIIth_Pc=?, a.UG=?, a.UG_Inst=?, a.UG_Univ=?, a.UG_Year=?, a.UG_Grade=?, a.UG_Pc=?, a.PG=?, a.PG_Inst=?, a.PG_Univ=?, a.PG_Year=?, a.PG_Grade=?, a.PG_Pc=?, a.Present_Course_Branch=?, a.CourseCompYr=?, a.Referee1=?, a.Referee2=?, a.Reason=?, a.Appliedbefore1=?, a.Appliedbefore2=?, a.Research_Interest=?, a.GQ_Subject=?, a.GQ_Project=?, a.GQ_Awards=?, a.GQ_Result=?, s.Ref1Email=?, s.Ref2Email=? WHERE (a.OnlineID=? && s.OnlineID=?)";
			pstmt = connect.prepareStatement(UpdateQuery);
			
			pstmt.setString(1, Name);
			//pstmt.setString(2, Surname);
			pstmt.setString(2, DOB);
			pstmt.setString(3, Gender);
			pstmt.setString(4, Nationality);
			pstmt.setString(5, Email);
			pstmt.setString(6, CAddress);
			pstmt.setString(7, CPin);
			pstmt.setString(8, CCity);
			pstmt.setString(9, CState);
			pstmt.setString(10, Telephone);
			pstmt.setString(11, PAddress);
			pstmt.setString(12, PPin);
			pstmt.setString(13, PCity);
			pstmt.setString(14, PermanentState);
			pstmt.setString(15, Category);
			pstmt.setString(16, Edu_XthStd);
			pstmt.setString(17, Edu_XthStd_Institute);
			pstmt.setString(18, Edu_XthStd_Board);
			pstmt.setString(19, Edu_XthStd_Year);
			pstmt.setString(20, Edu_XthStd_Grade);
			pstmt.setString(21, Edu_XthStd_Pc);
			pstmt.setString(22, Edu_XIIthStd);
			pstmt.setString(23, Edu_XIIthStd_Institute);
			pstmt.setString(24, Edu_XIIthStd_Board);
			pstmt.setString(25, Edu_XIIthStd_Year);
			pstmt.setString(26, Edu_XIIthStd_Grade);
			pstmt.setString(27, Edu_XIIthStd_Pc);
			pstmt.setString(28, Edu_UG);
			pstmt.setString(29, Edu_UG_Institute);
			pstmt.setString(30, Edu_UG_Board);
			pstmt.setString(31, Edu_UG_Year);
			pstmt.setString(32, Edu_UG_Grade);
			pstmt.setString(33, Edu_UG_Pc);
			pstmt.setString(34, Edu_PG);
			pstmt.setString(35, Edu_PG_Institute);
			pstmt.setString(36, Edu_PG_Board);
			pstmt.setString(37, Edu_PG_Year);
			pstmt.setString(38, Edu_PG_Grade);
			pstmt.setString(39, Edu_PG_Pc);
			pstmt.setString(40, Presentcourse);
			pstmt.setString(41, Coursecompyear);
			pstmt.setString(42, Referee1);
			pstmt.setString(43, Referee2);
			pstmt.setString(44, Reason);
			pstmt.setString(45, Appliedbefore1);
			pstmt.setString(46, Appliedbefore2);
			pstmt.setString(47, Interest);
			pstmt.setString(48, GQ_Subject);
			pstmt.setString(49, GQ_Project);
			pstmt.setString(50, GQ_Awards);
			pstmt.setString(51, GQ_Result);
			pstmt.setString(52, Ref1Email);
			pstmt.setString(53, Ref2Email);
			pstmt.setInt(54, oid);
			pstmt.setInt(55, oid1);
			pstmt.executeUpdate();
			return true;
			
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

}
