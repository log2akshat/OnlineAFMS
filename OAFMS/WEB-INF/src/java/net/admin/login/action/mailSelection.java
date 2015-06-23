package net.admin.login.action;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.candidate.application.model.*;

public class mailSelection extends ActionSupport {
	
	String msg1 = getText("SelectionMessage");
	String getMsg() {
        return msg1;
    }
		
	String msg2 = getText("selectionregards");;
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
		mailSelection progInstance = new mailSelection();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		int OnlineID = 0;
		String ApplicantName = "";
		String name = "";
		String msg = "";
		name = getName(Email);
			
				try
					{
					DBConnection getConnect = new DBConnection();
					connect = getConnect.getCon();
					stmt = connect.createStatement();
					
					result = stmt.executeQuery("Select OnlineID, Name from applicant where Email='"+Email+"'");
					while (result.next())
						{
							OnlineID = result.getInt(1);
							ApplicantName = result.getString(2);
						}
					
					msg= "To,\n\nName : "+ApplicantName+"\n\nApplication No. : "+OnlineID;
					msg+= "\n\nDear "+name+",\n\n";
					
					/** A static method could access static data and static method only:
					Though main method is static, it can access non-static (instance) variabels or methods by creating an instance of 
					the class in which the variables and methods are **/
					msg+= progInstance.getMsg();
					
					msg+= "\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
