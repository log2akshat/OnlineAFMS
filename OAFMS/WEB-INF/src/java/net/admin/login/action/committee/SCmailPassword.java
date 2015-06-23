package net.admin.login.action.committee;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;

public class SCmailPassword extends ActionSupport {
	
	String msg1 = getText("SCmessage");
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
			
				String Emailqry = "Select Name from user where Email='"+Email+"'";
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
		SCmailPassword progInstance = new SCmailPassword();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		int ID = 0;
		String SCUsername = "";
		String SCPassword = "";
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
					
					result = stmt.executeQuery("Select ID, Username, Passwd from user where Email='"+Email+"'");
					while (result.next())
						{
							ID = result.getInt(1);
							SCUsername = result.getString(2);
							SCPassword = result.getString(3);
						}

					msg+= "\n\n\nID : "+ID+"\n\nUsername : "+SCUsername+"\n\nYour Password : "+SCPassword;
					msg+= "\n\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
