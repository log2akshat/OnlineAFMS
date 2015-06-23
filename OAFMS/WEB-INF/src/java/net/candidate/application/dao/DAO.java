package net.candidate.application.dao;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.mail.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.internet.*;
import com.sun.mail.smtp.*;
import com.sun.mail.smtp.SMTPSSLTransport.*;
import javax.activation.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import net.database.*;
import net.candidate.application.action.*;
import net.mail.SendMailBean;

/*import java.io.*;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport; */

public class DAO extends ActionSupport {
	
	private int OnlineID;
	private SendMailBean sendMail;
	
	public DAO() {
		sendMail = new SendMailBean();
	}
	 	 
	public boolean insert(String Passwd, String Name, String DOB, String Gender, String Nationality, String Email, String CAddress, String CPin, String CCity, String CState, String Telephone, String PAddress, String PPin, String PCity, String PermanentState, String Category, String Edu_XthStd, String Edu_XthStd_Institute, String Edu_XthStd_Board, String Edu_XthStd_Year, String Edu_XthStd_Grade, String Edu_XthStd_Pc, String Edu_XIIthStd, String Edu_XIIthStd_Institute, String Edu_XIIthStd_Board, String Edu_XIIthStd_Year, String Edu_XIIthStd_Grade, String Edu_XIIthStd_Pc, String Edu_UG, String Edu_UG_Institute, String Edu_UG_Board, String Edu_UG_Year, String Edu_UG_Grade, String Edu_UG_Pc, String Edu_PG, String Edu_PG_Institute, String Edu_PG_Board, String Edu_PG_Year, String Edu_PG_Grade, String Edu_PG_Pc, String Presentcourse, String Coursecompyear, String Referee1, String Referee1Email, String Referee2, String Referee2Email, String Reason, String Appliedbefore1, String Appliedbefore2, String Interest, String GQ_Subject, String GQ_Project, String GQ_Awards, String GQ_Result)
	{
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			FileInputStream fis = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Connection....");
			
			String query = "INSERT INTO applicant VALUES(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,'No','No Action','No','No',NOW())";
			
			/*connect.setAutoCommit(false);
			File file = new File(net.Candidate.application.action.AppFormAction.userImage);
		    fis = new FileInputStream(file); */
		    
			pstmt = connect.prepareStatement(query);
			pstmt.setString(1, Name);
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
			//pstmt.setString(52, userImageFileName);
			//pstmt.setBinaryStream(53, fis, (int) file.length());
			pstmt.executeUpdate();
				
			System.out.println("Applicant Data [Part1] Added Successfully");
			
			ResultSet result_ID = null;	
			String IDqry = "Select OnlineID from applicant where Email=?";
			pstmt = connect.prepareStatement(IDqry);
			pstmt.setString(1, Email);
			result_ID = pstmt.executeQuery();
			{
			        while (result_ID.next())
			        {
			            OnlineID = result_ID.getInt(1);    
			        }
			 }
			
			String Securityquery = "INSERT INTO security VALUES("+OnlineID+",?,?,(select substring(MD5(RAND()) from 1 for 10) As Password),?,(select substring(MD5(RAND()) from 1 for 10) As Password),?)";
			pstmt = connect.prepareStatement(Securityquery);
			pstmt.setString(1, Email);
			pstmt.setString(2, Referee1Email);
			pstmt.setString(3, Referee2Email);
			pstmt.setString(4, Passwd);
			pstmt.executeUpdate();								
			//connect.commit();
			System.out.println("Security Data Added Successfully");	
				 
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////////////
			
			int Mail_OnlineID = 0;
			String AppEmail = "";
			String Ref1Email = "";
			String Ref2Email = "";
			ResultSet result_email = null;
		
			String Emailqry = "Select OnlineID, Email, Ref1Email, Ref2Email from security where Email=?";
			pstmt = connect.prepareStatement(Emailqry);
			pstmt.setString(1, Email);
			result_email = pstmt.executeQuery();
			{
			        while (result_email.next())
			        {
			        	Mail_OnlineID = result_email.getInt(1);
			            AppEmail = result_email.getString(2);
			            Ref1Email = result_email.getString(3);
			            Ref2Email = result_email.getString(4);
			        }
			 }

////////////////////////////////////////////////////Mail to the Applicant/////////////////////////////////////////////////////
			System.out.println(Email);
			String from = getText("INAT_MailID");
			String l_cc = "";
			String l_bcc = "";
			String subject = getText("ApplicationMailSubject")+Mail_OnlineID;
			String messageText = "";
			messageText = mailAppPassword.generateview(AppEmail); //messageString;
			String l_smtpSvr = getText("SMTP_Server");
		
			Map session = ActionContext.getContext().getSession();
			session.put("smtpServer",l_smtpSvr);
			String l_result  = sendMail.send(from,AppEmail,l_cc,l_bcc,subject,messageText,l_smtpSvr);

////////////////////////////////////////////////////Mail to 1st Referee/////////////////////////////////////////////////////
			
			String Referee1MailSubject = getText("Referee1MailSubject")+Mail_OnlineID;
			String Ref1messageText = "";
			Ref1messageText = mailRef1Password.generateview(AppEmail); //messageString;
			String R1l_result  = sendMail.send(from,Ref1Email,l_cc,l_bcc,Referee1MailSubject,Ref1messageText,l_smtpSvr);
			
////////////////////////////////////////////////////Mail to 2nd Referee/////////////////////////////////////////////////////

			String Referee2MailSubject = getText("Referee2MailSubject")+Mail_OnlineID;
			String Ref2messageText = "";
			Ref2messageText = mailRef2Password.generateview(AppEmail); //messageString;
			String R2l_result  = sendMail.send(from,Ref2Email,l_cc,l_bcc,Referee2MailSubject,Ref2messageText,l_smtpSvr);
			
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
			 setOnlineID(this.OnlineID);
			 System.out.println(OnlineID);
			 return true;
			}
	catch (SQLException e) {
		e.printStackTrace();
	}
	return false;
}
	
	public int getOnlineID() {
		return OnlineID;
	}
	
	public void setOnlineID(int OnlineID) {
		this.OnlineID = OnlineID;
		}
	
	public SendMailBean getSendMailBean() {
		return sendMail;
	}	
	public void setSendMailBean(SendMailBean sendMail) {
		this.sendMail = sendMail;
	}
}
