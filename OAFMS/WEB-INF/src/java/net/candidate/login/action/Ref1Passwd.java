package net.candidate.login.action;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.http.*;

import net.security.User;
import net.candidate.login.dao.DAO;
import net.candidate.login.dao.DAORef1Passwd;
import net.database.DBConnection;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ServletRequestAware;

public class Ref1Passwd extends ActionSupport implements ServletRequestAware
{	
	
	private HttpServletRequest request;
	private LoginAction login;
	
	//Data Fetching
	private UserList userlist;
	private List<UserList> userlistlist;
	
	DAO dao = new DAO();
	DAORef1Passwd daoref1passwd = new DAORef1Passwd();
	
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
		 
		if(user!=null)
		{
			   if(user.isCandidate())
			   {
			if(daoref1passwd.send(regid))
			{
				//addActionError(getText("mailsent_referee1"));
				Map session1 = ActionContext.getContext().getSession();
				String exc = session1.get("ex").toString();
				addActionError(exc);
		        return SUCCESS;
				   
			}
		}
		}
				else
				   {
					   this.addActionError("You are not authorised for this action.");
					   return LOGIN;
				   }
		return LOGIN;
	}	
	
}
