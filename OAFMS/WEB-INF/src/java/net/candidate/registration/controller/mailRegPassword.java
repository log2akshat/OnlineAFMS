package net.candidate.registration.controller;

import java.sql.*;
import java.io.*;
import java.util.*;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.candidate.registration.model.Register;

public class mailRegPassword extends ActionSupport {
	
	String msg1 = getText("RegMessage");
	String getMsg() {
        return msg1;
    }
	
	String msg2 = getText("RegRegards");
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
			
				String Emailqry = "Select AppName from Register where AppEmail='"+Email+"'";
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
		mailRegPassword progInstance = new mailRegPassword();
		Connection connect = null;
		ResultSet result = null;
		Statement stmt = null;
		
		String ApplicantName = "";
		String AppPassword = "";
		String name = "";
		String msg = "";
		name = getName(Email);
			
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
					
					result = stmt.executeQuery("select AppName, RegPasswd from Register where AppEmail='"+Email+"'");
					while (result.next())
						{
							ApplicantName = result.getString(1);
							AppPassword = result.getString(2);
						}

					msg+= "\n\n\nName : "+ApplicantName+"\n\n";
					msg+= "-------------------------------------------\n";
					msg+= "Credential need to access application form.";
					msg+= "-------------------------------------------\n";
					msg+= "Email : "+Email+"\n\n Password : "+AppPassword;
					msg+= "\n\n\n\n";
					msg+= progInstance.getMsgRegards();          
					  }
                 catch(Exception e){}
                 return msg;
      }
}
