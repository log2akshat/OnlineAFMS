package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;

import net.mail.SendMailBean;
import net.adminsecurity.AdminUser;
import net.admin.login.action.*;
import net.candidate.login.dao.DAO;
import net.candidate.login.action.*;
import net.database.DBConnection;
import net.candidate.registration.controller.*;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ZeroReportReminder extends ActionSupport implements ServletRequestAware
{	
	private HttpServletRequest request;
	
private SendMailBean sendMail;
	
	public ZeroReportReminder() {
		sendMail = new SendMailBean();
	}
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;	
	
	DAO dao = new DAO();
	net.admin.login.dao.AdminDAO daoprofile=new net.admin.login.dao.AdminDAO();
	
	public AdminUserList getAdminuserlist() {
		return adminuserlist;
	}
	public void setAdminuserlist(AdminUserList adminuserlist) {
		this.adminuserlist = adminuserlist;
	}
	public List<AdminUserList> getAdminuserlistlist() {
		return adminuserlistlist;
	}
	public void setAdminuserlistlist(List<AdminUserList> adminuserlistlist) {
		this.adminuserlistlist = adminuserlistlist;
	}
	//--------------------------------------------------------------------------//
	private UserList userlist;
	private List<UserList> userlistlist;
	
	public UserList getUserlist() {
		return userlist;
	}
	public void setUserlist(UserList userlist) {
		this.userlist = userlist;
	}
	public List<UserList> getUserlistlist() {
		return userlistlist;
	}
	public void setUserlistlist(List<UserList> userlistlist) {
		this.userlistlist = userlistlist;
	}
	
	//Login Logic
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	
	public String execute() throws Exception {
	HttpSession session = request.getSession();
	AdminUser user=(AdminUser)session.getAttribute("User");
	
	String Username = "";
	Username = session.getAttribute("uname").toString();	
	adminuserlistlist=daoprofile.fetch(Username);
	
	/*   String RegID = "";
	   RegID = session.getAttribute("regid").toString();
	   int oid = 0;
	   oid = Integer.parseInt(RegID);
	   userlistlist=dao.fetch(oid); */
	   
	   
	   
		if(user!=null)
		{
			   if(user.isAdministrator())
			   {
				   String ID[] = request.getParameterValues("selectID");
				   for (int i=0; i<ID.length; i++) {
					   System.out.println("Length of ID : "+ID.length);
					   String RegID=ID[i];
					 //  int rid = 0;
					  // rid = Integer.parseInt(RegID);
					   
					   try{
							Connection connect = null;
							ResultSet result = null;
							PreparedStatement pstmt = null;
							
							DBConnection getConnect = new DBConnection();
							connect = getConnect.getCon();
							System.out.println("JDBC MySQL Reminder Multimail Sending Connection....");
								 
				////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////////////
							
							String Ref1Email = "";
							String Ref2Email = "";
							ResultSet result_email = null;
						
							String Emailqry = "Select y.Ref1Email, y.Ref2Email from (Select x.*, s.Ref1Email, s.Ref2Email from (Select OnlineID, Name, Email  from applicant a where (Select count(*) from Referee r where r.App_OnlineID = a.OnlineID) = 0)x  JOIN security s ON s.OnlineID=x.OnlineID)y where y.OnlineID=?";
							pstmt = connect.prepareStatement(Emailqry);
							pstmt.setString(1, RegID);
							result_email = pstmt.executeQuery();
							{
							        while (result_email.next())
							        {
							        	Ref1Email = result_email.getString(1);
							        	Ref2Email = result_email.getString(2);
							        }
							 }
							
				////////////////////////////////////////////////////Mail to 1st Referee/////////////////////////////////////////////////////
							String from = getText("INAT_MailID");
							String l_cc = "";
							String l_bcc = "";
							String l_smtpSvr = getText("SMTP_Server");
						
							Map session1 = ActionContext.getContext().getSession();
							session1.put("smtpServer",l_smtpSvr);
							
							String subject = getText("Reminder");
							String messageText = "";
							messageText = ReminderMail1stRef.generateview(RegID); //messageString;
							String R1l_result  = sendMail.send(from,Ref1Email,l_cc,l_bcc,subject,messageText,l_smtpSvr);
							
							String messageText2 = "";
							messageText2 = ReminderMail2ndRef.generateview(RegID); //messageString;
							session.setAttribute("smtpServer",l_smtpSvr);
							String l_result2  = sendMail.send(from,Ref2Email,l_cc,l_bcc,subject,messageText2,l_smtpSvr);
												
				///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////			
							
							}
					catch (SQLException e) {
						e.printStackTrace();
					}
				   }		
			return "success";
		
				   }
		}
				else
				   {
					   this.addActionError("You are not authorised for this action.");
					   return LOGIN;
				   }
		return LOGIN;
	}	
	
	public SendMailBean getSendMailBean() {
		return sendMail;
	}	
	public void setSendMailBean(SendMailBean sendMail) {
		this.sendMail = sendMail;
	}
	
}
