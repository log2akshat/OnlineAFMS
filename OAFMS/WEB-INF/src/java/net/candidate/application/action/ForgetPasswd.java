package net.candidate.application.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import net.candidate.application.dao.DAOforgetPasswd;
import net.database.DBConnection;

public class ForgetPasswd extends ActionSupport{
	
	private String Email;
	
	DAOforgetPasswd daofp = new DAOforgetPasswd();
	
	public String execute()
	{	
		try 
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			
			int RegID = 0;
			String Applied_qry = "SELECT id FROM Register WHERE AppEmail=?";
			pstmt = connect.prepareStatement(Applied_qry);
			pstmt.setString(1, Email);
			result = pstmt.executeQuery();
			while(result.next())
			{
				RegID = result.getInt(1);
			}
			
			System.out.println("Akshat Testing RegID : " +RegID);
			boolean comparing = (RegID == 0); 
			
			if (comparing == false)
			{	
				daofp.send(RegID);
				//addActionError(getText("Reminder_Password_Sent"));
				Map session = ActionContext.getContext().getSession();
				String exc = session.get("ex").toString();
				addActionError(exc);
		        return SUCCESS;
			}
			
			else
				this.addActionError(getText("not_registered"));
				return "error";
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	// Email Getter and Setter
	public String getEmail() {
		return Email;
	}
	public void setEmail(String Email) {
		this.Email = Email;
	}
	
	public ForgetPasswd()
	    {
	    }
}
