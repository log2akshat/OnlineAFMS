package net.admin.login.action.committee;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import net.database.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.*;

import net.admin.login.action.*;
import net.admin.login.dao.SCDAO;
import net.admin.login.dao.AdminDAO;
import net.adminsecurity.AdminUser;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.dispatcher.SessionMap;

public class SCDeleteProfile extends ActionSupport implements ServletRequestAware{
	
	private String scuname = "";
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	SCDAO dao = new SCDAO();
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
	
	public String getScuname() {
		return scuname;
	}
	public void setScuname(String scuname) {
		this.scuname = scuname;
	}
		
	public String execute() throws Exception {
	   HttpSession session = request.getSession();
	   AdminUser user=(AdminUser)session.getAttribute("User");
	
	   String Username = "";
	   Username = session.getAttribute("uname").toString();
	   session.setAttribute("reguname",scuname);
	   adminuserlistlist=daoprofile.fetch(Username);
	 
	   String Uname = "";
	   Uname = session.getAttribute("reguname").toString();
	   System.out.println(Uname);
	   userlistlist=dao.fetchSC();
	   
	   /*
	    * The SC Delete Profile Code begins from here....
	    */
	    try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();		
			
			int id=0;
			String IDquery = "SELECT ID FROM user WHERE Username=?";
			pstmt = connect.prepareStatement(IDquery);
			pstmt.setString(1, Uname);
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			
			System.out.println(id);
			System.out.println("JDBC MySQL Screening Committee Member Account Deletion Connection....");
				String query = "DELETE FROM user WHERE Username=?";
				pstmt = connect.prepareStatement(query);
				pstmt.setString(1, Uname);
				pstmt.executeUpdate();			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		   /*
		    * The SC Delete Profile Code ends from here....
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
}