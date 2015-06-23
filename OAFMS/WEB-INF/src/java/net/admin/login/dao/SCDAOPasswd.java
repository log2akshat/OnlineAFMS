package net.admin.login.dao;

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
import net.admin.login.action.committee.*;
import net.mail.SendMailBean;

public class SCDAOPasswd extends ActionSupport {
	
	private SendMailBean sendMail;
	
	public SCDAOPasswd() {
		sendMail = new SendMailBean();
	}
	
	public boolean send(String scuname)
	{
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Applicant Mail Sending Connection....");
				 
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////////////
			
			String Email = "";
			ResultSet result_email = null;
		
			String Emailqry = "Select Email from user where Username=?";
			pstmt = connect.prepareStatement(Emailqry);
			pstmt.setString(1, scuname);
			result_email = pstmt.executeQuery();
			{
			        while (result_email.next())
			        {
			        	Email = result_email.getString(1);
			        }
			 }

////////////////////////////////////////////////////Mail to 1st Referee/////////////////////////////////////////////////////
			String from = getText("INAT_MailID");
			String l_cc = "";
			String l_bcc = "";
			String l_smtpSvr = getText("SMTP_Server");
		
			Map session = ActionContext.getContext().getSession();
			session.put("smtpServer",l_smtpSvr);
			
			String subject = getText("SCInvitationMailSubject");
			String messageText = "";
			messageText = net.admin.login.action.committee.SCmailPassword.generateview(Email); //messageString;
			String R1l_result  = sendMail.send(from,Email,l_cc,l_bcc,subject,messageText,l_smtpSvr);
								
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
			 return true;
			}
	catch (SQLException e) {
		e.printStackTrace();
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
