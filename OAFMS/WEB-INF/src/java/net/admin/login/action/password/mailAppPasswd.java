package net.admin.application.action.password;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.candidate.application.model.*;

public class mailAppPasswd extends ActionSupport {
	
	String msg1 = getText("ApplicationMessage");
	String getMsg() {
        return msg1;
    }
	
	String msg2 = getText("RegRegards");;
	String getMsgRegards() {
        return msg2;
    }
	
	public static String getName(String Email)
	{	
		String name = "usr";
		try
			{
				Connection connect = null;
				ResultSet result = null;
				Statement stmt = null;
				DBConnection getConnect = new DBConnection();
				connect = getConnect.getCon();
				stmt = connect.createStatement();
			
				String Emailqry = "Select Name from applicant where Email='"+Email+"'";
				result = stmt.executeQuery(Emailqry);
			       	while (result.next())
			       		{
			       			name = result.getString(1);
			       		}
				}
			catch(Exception e){}
			return name;
	}				
	
	public static String generateview(String Email)
	{		
		mailAppPasswd progInstance = new mailAppPasswd();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		int OnlineID = 0;
		String ApplicantName = "";
		//String Surname = "";
		String AppPassword = "";
		String name = "";
		String msg = "";
		name = getName(Email);
			
				try
					{
					DBConnection getConnect = new DBConnection();
					connect = getConnect.getCon();
					stmt = connect.createStatement();
					msg = "Dear "+name+",\n\n";
					
					/** A static method could access static data and static method only:
					Though main method is static, it can access non-static (instance) variabels or methods by creating an instance of 
					the class in which the variables and methods are **/
					msg+= progInstance.getMsg();
					
					result = stmt.executeQuery("Select a.OnlineID, a.Name, s.AppPasswd from applicant a, security s where a.Email='"+Email+"' && s.Email='"+Email+"'");
					while (result.next())
						{
							OnlineID = result.getInt(1);
							ApplicantName = result.getString(2);
							AppPassword = result.getString(3);
						}

					msg+= "\n\n\nOnlineID : "+OnlineID+"\n\nName : "+ApplicantName+"\n\nYour Password : "+AppPassword;
					msg+= "\n\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
