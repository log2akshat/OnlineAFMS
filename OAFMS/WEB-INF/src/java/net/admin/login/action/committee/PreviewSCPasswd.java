package net.admin.login.action.committee;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;
import net.adminsecurity.AdminUser;
import net.admin.login.action.*;
import net.admin.login.dao.SCDAO;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class PreviewSCPasswd extends ActionSupport implements ServletRequestAware{
	
	private String scuname = "";
	private HttpServletRequest request;
	
	//Data Fetching//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	SCDAO dao=new SCDAO();
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
	   
	   try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int id=0;
			String qry = "SELECT ID FROM user WHERE Username=?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setString(1, scuname);
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			System.out.println(id);
			boolean comparing = (id == 0); 
			
			if (comparing == true)
			{			
				addActionError(getText("id_notexixts"));
		        return ERROR;
			}
			
			else
			{
	   userlistlist=dao.fetch(scuname);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
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
