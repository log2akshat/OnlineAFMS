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
import net.mail.SendMailBean;
import net.candidate.application.action.*;
import net.candidate.registration.controller.*;

public class DAOforgetPasswd extends ActionSupport {
	
	private SendMailBean sendMail;
	
	public DAOforgetPasswd() {
		sendMail = new SendMailBean();
	}
	
	public boolean send(int RegID)
	{
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Forget Password Sending Connection....");
								 
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////////////
			
			String AppEmail = "";
			ResultSet result_email = null;
		
			String Emailqry = "Select AppEmail from Register where id=?";
			pstmt = connect.prepareStatement(Emailqry);
			pstmt.setInt(1, RegID);
			result_email = pstmt.executeQuery();
			{
			        while (result_email.next())
			        {
			            AppEmail = result_email.getString(1);
			        }
			 }

////////////////////////////////////////////////////Mail to the Applicant/////////////////////////////////////////////////////
			String from = getText("INAT_MailID");
			String l_cc = "";
			String l_bcc = "";
			String subject = getText("ReminderMailSubject");
			String messageText = "";
			messageText = mailRegPassword.generateview(AppEmail); //messageString;
			String l_smtpSvr = getText("SMTP_Server");
		
			Map session = ActionContext.getContext().getSession();
			session.put("smtpServer",l_smtpSvr);
			String l_result  = sendMail.send(from,AppEmail,l_cc,l_bcc,subject,messageText,l_smtpSvr);
			
			session.put("ex",l_result);
			
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
