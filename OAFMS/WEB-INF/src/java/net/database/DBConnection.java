package net.database;

import java.sql.*;

import com.opensymphony.xwork2.ActionSupport;

public class DBConnection extends ActionSupport {
	
	String DBName = getText("DBName");
	String getDBName() {
        return DBName;
    }
	
	String DBPassword = getText("DBPassword");
	String getDBPassword() {
        return DBPassword;
    }
	
	public static void main(String[] args) 
	{
		System.out.println("MySQL Connection....");
		}

public static Connection getCon()
{
		DBConnection progInstance = new DBConnection();
		
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = progInstance.getDBName();
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root"; 
		String password = progInstance.getDBPassword();

try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName,userName,password);
			} 

catch (Exception e) {
			e.printStackTrace();
		}

return conn;
}

public static void closeCon(Connection conn, ResultSet result, PreparedStatement pstmt) {
	/* added on 12 June 2015 - akshat to fix -
	 * com.mysql.jdbc.exceptions.jdbc4.MySQLNonTransientConnectionException: Data source rejected establishment of connection,  message from server: "Too many connections"
	 * Problem
	 */

	try {
			if(conn != null) {
				conn.close();
			}
		}
		catch (SQLException se) {
			System.out.println("JDBC SQL Exception in Connection Manager : " + se);
			se.printStackTrace();
		}
		try {
			if(result != null) {
				result.close();
			}
		}
		catch (SQLException se) {
			System.out.println("JDBC SQL Exception in Resultset : " + se);
			se.printStackTrace();
		}
		try {
			if(pstmt != null) {
				pstmt.close();
			}
		}
		catch (SQLException se) {
			System.out.println("JDBC SQL Exception in prepared statement : " + se);
			se.printStackTrace();
		}
	}

}