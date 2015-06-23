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
import net.adminsecurity.AdminUser;
import net.admin.login.action.*;
import net.admin.login.action.*;
public class DAOSelectionUpdate extends ActionSupport{
	
	/** Candidate Profile Updation Mechanism **/
	public boolean update(String WrittenTestCall, String Status, int oid)
	{
		try
		{
			Connection connect = null;
			ResultSet result = null;
			PreparedStatement pstmt = null;
			
			DBConnection getConnect = new DBConnection();
			connect = getConnect.getCon();
			System.out.println("JDBC MySQL SELECTION STATUS UPDATE Connection....");

			String UpdateQuery = "UPDATE applicant SET WrittenTestCall=?, Status=? WHERE OnlineID=?";
			pstmt = connect.prepareStatement(UpdateQuery);
			
			pstmt.setString(1, WrittenTestCall);
			pstmt.setString(2, Status);
			pstmt.setInt(3, oid);
			pstmt.executeUpdate();
			return true;
			
		}catch(Exception e){
			System.out.println(e);
		}
		return false;
	}

}