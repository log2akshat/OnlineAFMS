package net.admin.login.dao;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.naming.*;
import javax.mail.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.mail.internet.*;
import com.sun.mail.smtp.*;
import com.sun.mail.smtp.SMTPSSLTransport.*;
import javax.activation.*;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;

import net.database.*;

public class DAOExcel extends ActionSupport {
		
	public boolean print()
	{
		try{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL Applicant Data Printing in Excel Format Connection....");
				 
////////////////////////////////////////////////////Printing Data in Excel Format Mechanism/////////////////////////////////////////////////////////////
				
			String Emailqry = "SELECT * FROM applicant INTO OUTFILE '/tmp/INAT.csv' FIELDS TERMINATED BY '?' ENCLOSED BY '|' LINES TERMINATED BY '\n';";
			pstmt = connect.prepareStatement(Emailqry);
			result = pstmt.executeQuery();
						
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
			 return true;
			}
	catch (SQLException e) {
		e.printStackTrace();
	}
	return false;
}
}
