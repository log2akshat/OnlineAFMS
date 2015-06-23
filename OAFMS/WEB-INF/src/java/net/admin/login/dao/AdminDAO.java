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
import net.adminsecurity.AdminUser;
import net.admin.login.action.*;

public class AdminDAO extends ActionSupport{
	
	public String applications()
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;		
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int applications = 0;
			String query = "Select count(*) from applicant";
			pstmt = connect.prepareStatement(query);
			result = pstmt.executeQuery();
			while(result.next())
			{
				applications = result.getInt(1);
			}
			return "success";
			
		}catch(Exception e){
			System.out.println(e);
		}
		return "error";
	}
	
	public List<AdminUserList> fetch(String username)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Login Connection....");
			
			String query = "Select a.* from admin a where a.Username=? UNION Select u.* from user u where u.Username=?";
			pstmt = connect.prepareStatement(query);
			pstmt.setString(1, username);
			pstmt.setString(2, username);
			result = pstmt.executeQuery();
			
			AdminUserList adminuserlist;
			List<AdminUserList> adminlist = new ArrayList<AdminUserList>();
			while(result.next()){
				adminuserlist = new AdminUserList();
				adminuserlist.setID(result.getInt(1));
				adminuserlist.setName(result.getString(2));
				adminuserlist.setUsername(result.getString(3));
				adminuserlist.setEmail(result.getString(4));			
				adminuserlist.setPasswd(result.getString(5));
				adminuserlist.setAccountStatus(result.getString(6));
				adminlist.add(adminuserlist);
			}
				
		return adminlist;		
		
		}
		catch(Exception e){
			System.out.println(e);
		}
		return null;
	}
	
	/** Candidate Profile Updation Mechanism 
	public boolean update(String Name, String Username, String Email, String Passwd, String AccountStatus, String username)
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
**/
}