package net.candidate.referee.dao;

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
import net.candidate.referee.action.*;
import net.mail.SendMailBean;

public class DAO extends ActionSupport {
	
	private SendMailBean sendMail;
	
	public DAO() {
		sendMail = new SendMailBean();
	}
	
	public boolean insert(int Oid, String Candname, String Knowing, String Gi, String Gsk, String Oap, String Mfr, String Ma, String Eos, String Psa, String Cs, String Sc, String Cit, String Strength, String Weaknesses, String Order, String Recommending, String Grades, String Gradesifno, String Interest, String Excc, String Summary, String Refname, String Designation, String Institute, String City, String Pin, String Mobilenum, String Telephone, String Email)
	{
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC Referee MySQL Connection....");
				
				String query = "INSERT INTO Referee VALUES(NULL,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())";
				pstmt = connect.prepareStatement(query);
				pstmt.setInt(1, Oid);
				pstmt.setString(2, Candname);
				pstmt.setString(3, Knowing);
				pstmt.setString(4, Gi);
				pstmt.setString(5, Gsk);
				pstmt.setString(6, Oap);
				pstmt.setString(7, Mfr);
				pstmt.setString(8, Ma);
				pstmt.setString(9, Eos);
				pstmt.setString(10, Psa);
				pstmt.setString(11, Cs);
				pstmt.setString(12, Sc);
				pstmt.setString(13, Cit);
				pstmt.setString(14, Strength);
				pstmt.setString(15, Weaknesses);
				pstmt.setString(16, Order);
				pstmt.setString(17, Recommending);
				pstmt.setString(18, Grades);
				pstmt.setString(19, Gradesifno);
				pstmt.setString(20, Interest);
				pstmt.setString(21, Excc);
				pstmt.setString(22, Summary);
				pstmt.setString(23, Refname);
				pstmt.setString(24, Designation);
				pstmt.setString(25, Institute);
				pstmt.setString(26, City);
				pstmt.setString(27, Pin);
				pstmt.setString(28, Mobilenum);
				pstmt.setString(29, Telephone);
				pstmt.setString(30, Email);
				pstmt.executeUpdate();
				
				System.out.println("Referee Data Added Successfully");
				 
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////////////
				String AppEmail = "";
				ResultSet result_email = null;
			
				String Emailqry = "Select Email from applicant where OnlineID = ?";
				pstmt = connect.prepareStatement(Emailqry);
				pstmt.setInt(1, Oid);
				result_email = pstmt.executeQuery();
				{
				        while (result_email.next())
				        {
				            AppEmail = result_email.getString(1);
				        }
				}
				
				
/////////////////////////////////////////////////////////////Mail to Referee///////////////////////////////////////////////////////////
				String from = getText("INAT_MailID");
				String l_cc = "";
				String l_bcc = "";
				String subject = getText("RefereeFB_Success_MailSubject");
				String messageText = "";
				messageText = AssessmentFormFBReferee.generateview(Email); //messageString;
				String l_smtpSvr = getText("SMTP_Server");
			
				Map session = ActionContext.getContext().getSession();
				session.put("smtpServer",l_smtpSvr);
				String l_result  = sendMail.send(from,Email,l_cc,l_bcc,subject,messageText,l_smtpSvr);
				
/////////////////////////////////////////////////////////////Mail to Applicant////////////////////////////////////////////////////////				
				String AppMailSubject = getText("RefereeFB_Success_MailSubject");
				String AppmessageText = "";
				AppmessageText = AssessmentFormFBApplicant.generateview(Email); //messageString;
				String R1l_result  = sendMail.send(from,AppEmail,l_cc,l_bcc,AppMailSubject,AppmessageText,l_smtpSvr);
				
				return true;
		}
		catch(Exception e){
		}
		return false;
	}
	
	public SendMailBean getSendMailBean() {
		return sendMail;
	}	
	public void setSendMailBean(SendMailBean sendMail) {
		this.sendMail = sendMail;
	}
}
