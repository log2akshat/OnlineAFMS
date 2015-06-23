package net.candidate.registration.controller;

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
import net.candidate.registration.model.Register;
import net.mail.SendMailBean;

public class RegisterAction extends ActionSupport {
	
	private Register register;
	private SendMailBean sendMail;
	private HttpServletRequest request;
	
	public RegisterAction() {
		sendMail = new SendMailBean();
	}
	
	public String add() {
		System.out.println(getRegister());
		try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Connection....");
			
			int id=0;
			String qry = "SELECT id FROM Register WHERE AppEmail=?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setString(1, register.getEmail());
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			System.out.println(id);
			boolean comparing = (id == 0); 
			
			if (comparing == false)
			{			
				addActionError(getText("validate_alreadyRegistered"));
		        return ERROR;
			}
			
			else
			{
				String query = "INSERT INTO Register VALUES(NULL,?,?,(select substring(MD5(RAND()) from 1 for 8) As Password))";
				pstmt = connect.prepareStatement(query);
				pstmt.setString(1, register.getName());
				pstmt.setString(2, register.getEmail());
				pstmt.executeUpdate();
				
				System.out.println("Data Added Successfully");
								
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////

				String Email = "";
				ResultSet result_email = null;
			
				String Emailqry = "Select AppEmail from Register where AppEmail=?";
				pstmt = connect.prepareStatement(Emailqry);
				pstmt.setString(1, register.getEmail());
				result_email = pstmt.executeQuery();
				{
				        while (result_email.next())
				        {
				                Email = result_email.getString(1);
				        }
				 }
				System.out.println(Email);
				String from = getText("INAT_MailID");
				String l_cc = "";
				String l_bcc = "";
				String subject = getText("RegMailSubject");
				String messageText = "";
				messageText = mailRegPassword.generateview(Email); //messageString;
				String l_smtpSvr = getText("SMTP_Server");
			
				Map session = ActionContext.getContext().getSession();
				session.put("smtpServer",l_smtpSvr);
				String l_result  = sendMail.send(from,Email,l_cc,l_bcc,subject,messageText,l_smtpSvr);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				
		}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public Register getRegister() {
		return register;
	}	
	public void setRegister(Register register) {
		this.register = register;
	}
	
	public SendMailBean getSendMailBean() {
		return sendMail;
	}	
	public void setSendMailBean(SendMailBean sendMail) {
		this.sendMail = sendMail;
	}
}
