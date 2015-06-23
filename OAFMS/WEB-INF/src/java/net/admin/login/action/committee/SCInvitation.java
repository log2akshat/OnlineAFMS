package net.admin.login.action.committee;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;
import net.database.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.*;

import net.mail.SendMailBean;
import net.admin.login.action.*;
import net.admin.login.dao.AdminDAO;
import net.adminsecurity.AdminUser;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.dispatcher.SessionMap;

public class SCInvitation extends ActionSupport implements ServletRequestAware{
	
	private SendMailBean sendMail;
	
	public SCInvitation() {
		sendMail = new SendMailBean();
	}
	
	private String Scname;
	private String Scemail;
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	AdminDAO dao=new AdminDAO();
	
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
	
	//Login Logic
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	
	// SC Name Getter and Setter
	public String getScname() {
		return Scname;
	}
	public void setScname(String Scname) {
		this.Scname = Scname;
	}
	
	// SC Email Getter and Setter
	public String getScemail() {
		return Scemail;
	}
	public void setScemail(String Scemail) {
		this.Scemail = Scemail;
	}	
	
	public String execute() throws Exception {
	   HttpSession session = request.getSession();
	   AdminUser user=(AdminUser)session.getAttribute("User");
	
	   String Username = "";
	   Username = session.getAttribute("uname").toString();
	   adminuserlistlist=dao.fetch(Username);
	 
	   /*
	    * The SC Invitation Code begins from here....
	    */
	   
	   String Scusername = "";
	   Scusername = Scemail.substring(0,Scemail.indexOf('@'));
	   	   
	   try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int id=0;
			String qry = "SELECT ID FROM user WHERE Username = ?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setString(1, Scusername);
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			System.out.println(id);
			boolean comparing = (id == 0); 
			
			if (comparing == false)
			{			
				addActionError(getText("id_exists"));
		        return ERROR;
			}
			
			else
			{
				String query = "INSERT INTO user VALUES(NULL,?,?,?,(select substring(MD5(RAND()) from 1 for 8) As Password),'Active')";
				pstmt = connect.prepareStatement(query);
				pstmt.setString(1, Scname);
				pstmt.setString(2, Scusername);
				pstmt.setString(3, Scemail);
				pstmt.executeUpdate();
				
				System.out.println("Data Added Successfully");
								
////////////////////////////////////////////////////Mail Sending Mechanism/////////////////////////////////////////////////////

				String Email = "";
				ResultSet result_email = null;
			
				String Emailqry = "Select Email from user where Email=?";
				pstmt = connect.prepareStatement(Emailqry);
				pstmt.setString(1, Scemail);
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
				String subject = getText("SCInvitationMailSubject");
				String messageText = "";
				messageText = SCmailPassword.generateview(Email); //messageString;
				String l_smtpSvr = getText("SMTP_Server");
			
				Map session1 = ActionContext.getContext().getSession();
				session1.put("smtpServer",l_smtpSvr);
				String l_result  = sendMail.send(from,Email,l_cc,l_bcc,subject,messageText,l_smtpSvr);
				
				addActionError(getText("SC_MemberInvited"));
		        return ERROR;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				
		}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		   /*
		    * The SC Invitation Code ends from here....
		    */
		
	   if(user!=null){
		   System.out.println(user);
		   if(user.isAdministrator())
			   return SUCCESS;
		   else{
			   this.addActionError(getText("authorized_access"));
			   return LOGIN;
		   }
	   }
	   else{
		   this.addActionError(getText("authorized_login"));
		   return LOGIN;
	   }  					
	}
	
	public SendMailBean getSendMailBean() {
		return sendMail;
	}	
	public void setSendMailBean(SendMailBean sendMail) {
		this.sendMail = sendMail;
	}
}
