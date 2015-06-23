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
import net.admin.login.action.password.*;
import net.mail.SendMailBean;
import net.candidate.application.action.mailRef1Password;

public class DAORef2Passwd extends ActionSupport {
	
	private SendMailBean sendMail;
	
	public DAORef2Passwd() {
		sendMail = new SendMailBean();
	}
	
	public boolean send(int oid)
	{
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL admin interface 1st Referee Mail Sending Connection....");
				 
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////////////
			
			String AppEmail = "";
			String Ref2Email = "";
			ResultSet result_email = null;
		
			String Emailqry = "Select Email, Ref2Email from security where OnlineID=?";
			pstmt = connect.prepareStatement(Emailqry);
			pstmt.setInt(1, oid);
			result_email = pstmt.executeQuery();
			{
			        while (result_email.next())
			        {
			            AppEmail = result_email.getString(1);
			            Ref2Email = result_email.getString(2);
			        }
			 }
			
////////////////////////////////////////////////////Mail to 1st Referee/////////////////////////////////////////////////////
			String from = getText("INAT_MailID");
			String l_cc = "";
			String l_bcc = "";
			String l_smtpSvr = getText("SMTP_Server");
		
			Map session = ActionContext.getContext().getSession();
			session.put("smtpServer",l_smtpSvr);
			
			String Referee2MailSubject = getText("Referee2MailSubject");
			String Ref2messageText = "";
			Ref2messageText = net.candidate.login.action.MailRef2Passwd.generateview(AppEmail); //messageString;
			String R1l_result  = sendMail.send(from,Ref2Email,l_cc,l_bcc,Referee2MailSubject,Ref2messageText,l_smtpSvr);
			
			session.put("ex",R1l_result);
			
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
