package net.admin.login.action;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.candidate.application.model.*;

public class ReminderMail1stRef extends ActionSupport {
	
	String msg1 = getText("ReminderMail");
	String getMsg() {
        return msg1;
    }
	
	String msg2 = getText("RegRegards");;
	String getMsgRegards() {
        return msg2;
    }
	
	public static String getName(String onlineid)
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
			
				String Ref1Query = "Select Referee1 from applicant where OnlineID='"+onlineid+"'";
				result = stmt.executeQuery(Ref1Query);
			       	while (result.next())
			       		{
			       			name = result.getString(1);
			       		}
				}
			catch(Exception e){}
			return name;
	}				
	
	public static String generateview(String onlineid)
	{		
		ReminderMail1stRef progInstance = new ReminderMail1stRef();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		int oid = 0;
		String ApplicantName = "";
		String Password = "";
		String name = "";
		String msg = "";
		name = getName(onlineid);
			
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
					
					result = stmt.executeQuery("select x.OnlineID, x.Name, x.Ref1Passwd from (select a.OnlineID, a.Name, s.Ref1Passwd FROM applicant a JOIN security s ON a.OnlineID = s.OnlineID)x where OnlineID='"+onlineid+"'");
					while (result.next())
						{
							oid = result.getInt(1);
							ApplicantName = result.getString(2);
							Password = result.getString(3);
						}

					msg+= "\n\n\nOnlineID : "+oid+"\n\nName : "+ApplicantName+"\n\nYour Password : "+Password;
					msg+= "\n\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
