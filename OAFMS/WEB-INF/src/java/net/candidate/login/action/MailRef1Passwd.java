package net.candidate.login.action;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.candidate.application.model.*;

public class MailRef1Passwd extends ActionSupport {
	
	String msg1 = getText("RefPasswordMessage");
	String getMsg() {
        return msg1;
    }
	
	String msg2 = getText("RegRegards");;
	String getMsgRegards() {
        return msg2;
    }
	
	public static String getName(String Ref1Email)
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
			
				String Emailqry = "Select Referee1 from applicant where Email='"+Ref1Email+"'";
				result = stmt.executeQuery(Emailqry);
			       	while (result.next())
			       		{
			       			name = result.getString(1);
			       		}
				}
			catch(Exception e){}
			return name;
	}				
	
	public static String generateview(String Ref1Email)
	{		
		MailRef1Passwd progInstance = new MailRef1Passwd();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		int OnlineID = 0;
		String ApplicantName = "";
		//String Surname = "";
		String Ref1Password = "";
		String name = "";
		String msg = "";
		name = getName(Ref1Email);
			
				try
					{
					DBConnection getConnect = new DBConnection();
					connect = getConnect.getCon();
					stmt = connect.createStatement();
					msg = "Dear "+name+"\n\n";
					
					/** A static method could access static data and static method only:
					Though main method is static, it can access non-static (instance) variabels or methods by creating an instance of 
					the class in which the variables and methods are **/
					msg+= progInstance.getMsg();
					
					result = stmt.executeQuery("Select a.OnlineID, a.Name, s.Ref1Passwd from applicant a, security s where a.Email='"+Ref1Email+"' && s.Email='"+Ref1Email+"'");
					while (result.next())
						{
							OnlineID = result.getInt(1);
							ApplicantName = result.getString(2);
							//Surname = result.getString(3);
							Ref1Password = result.getString(3);
						}

					msg+= "\n\n\nOnlineID : "+OnlineID+"\n\nName : "+ApplicantName+"\n\nYour Password : "+Ref1Password;
					msg+= "\n\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
