package net.admin.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;
import net.adminsecurity.AdminUser;
import net.admin.login.dao.*;
import net.admin.login.action.RefereeList;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class ViewRefereeProfile extends ActionSupport implements ServletRequestAware{
	
	private int refid = 0;
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching//Data Fetching
	private AdminUserList adminuserlist;
	private List<AdminUserList> adminuserlistlist;
	
	RefereeDAO dao = new RefereeDAO();
	AdminDAO daoprofile = new AdminDAO();
	
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
	private RefereeList refereelist;
	private List<RefereeList> refereelistlist;
	
	public RefereeList getRefereelist() {
		return refereelist;
	}
	public void setRefereelist(RefereeList refereelist) {
		this.refereelist = refereelist;
	}
	public List<RefereeList> getRefereelistlist() {
		return refereelistlist;
	}
	public void setRefereelistlist(List<RefereeList> refereelistlist) {
		this.refereelistlist = refereelistlist;
	}
	
	//Login Logic
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;		
	}
	
	public int getRefid() {
		return refid;
	}
	public void setRefid(int refid) {
		this.refid = refid;
	}
	
	public String execute() throws Exception {
	   HttpSession session = request.getSession();
	   AdminUser user=(AdminUser)session.getAttribute("User");
	
	   String Username = "";
	   Username = session.getAttribute("uname").toString();	
	   session.setAttribute("refereeid",refid);
	   adminuserlistlist = daoprofile.fetch(Username);
	   
	   try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int id=0;
			String qry = "SELECT RefID FROM Referee WHERE RefID=?";
			pstmt = connect.prepareStatement(qry);
			pstmt.setInt(1, refid);
			result = pstmt.executeQuery();
			while(result.next())
			{
				id = result.getInt(1);
			}
			System.out.println(id);
			boolean comparing = (id == 0); 
			
			if (comparing == true)
			{			
				addActionError(getText("refid_notexixts"));
		        return ERROR;
			}
			
			else
			{
				refereelistlist = dao.fetch(refid);
		}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		
	   if(user!=null){
		   System.out.println(user);
		   if(user.isCommitteemember())
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
