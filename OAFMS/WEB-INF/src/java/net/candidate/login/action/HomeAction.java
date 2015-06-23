package net.candidate.login.action;

import java.io.*;
import java.util.*;
import javax.servlet.http.*;

import net.candidate.login.dao.DAO;
import net.security.User;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.dispatcher.SessionMap;

public class HomeAction extends ActionSupport implements ServletRequestAware{
	
	//private int oid;
	private String password;
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private UserList userlist;
	private List<UserList> userlistlist;
	
	DAO dao=new DAO();
	
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
	   User user=(User)session.getAttribute("User");
	
	   String OnlineID = "";
	   OnlineID = session.getAttribute("registrationid").toString();
	   int regid = 0;
	   regid = Integer.parseInt(OnlineID);
	   userlistlist=dao.fetch(regid);
	 
	   if(user!=null){
		   System.out.println(user);
		   if(user.isCandidate())
			   return SUCCESS;
		   else{
			   this.addActionError("You are not authorised for this action.");
			   return LOGIN;
		   }
	   }
	   else{
		   this.addActionError("You must be Logged in.");
		   return LOGIN;
	   }  					
	}	
	public String addEmployee(){
		//Implement code for adding new Employee Here. 
		this.addActionMessage("Employee Added Successfully.");
		return SUCCESS;
	}
}
