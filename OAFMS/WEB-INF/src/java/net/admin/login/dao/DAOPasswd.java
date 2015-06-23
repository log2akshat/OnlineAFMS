package net.admin.login.dao;

import java.io.*;
import java.sql.*;
import java.util.*;
import javax.naming.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import net.database.*;
import net.security.User;
import net.admin.login.action.*;

public class DAOPasswd extends ActionSupport{
	
	public boolean update(String Passwd, String Username)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL ADMINISTRATOR PASSWORD UPDATE Connection....");

			String UpdateQuery = "UPDATE admin SET Passwd=? WHERE Username=?";
			pstmt = connect.prepareStatement(UpdateQuery);
			
			pstmt.setString(1, Passwd);
			pstmt.setString(2, Username);
			pstmt.executeUpdate();
			return true;
			
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}
}