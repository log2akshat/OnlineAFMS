package net.candidate.referee.action;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.candidate.referee.model.*;

public class AssessmentFormFBReferee extends ActionSupport {
	
	String msg1 = getText("AssessmentFormFB_Referee_Message");
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
			
				String Emailqry = "Select Name from Referee where Email='"+Email+"'";
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
		AssessmentFormFBReferee progInstance = new AssessmentFormFBReferee();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		int RefID = 0;
		int OnlineID = 0;
		String Appname = "";
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
					
					result = stmt.executeQuery("Select RefID, App_OnlineID, Candname from Referee where Email='"+Email+"'");
					while (result.next())
						{
							RefID = result.getInt(1);
							OnlineID = result.getInt(2);
							Appname = result.getString(3);
						}

					msg+= "\n\nYour Reference Number is : "+RefID+"\n\nOnline ID of the Student : "+OnlineID+"\n\nStudent's Name : "+Appname;
					msg+= "\n\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
