<%@ page language="java" session="true" pageEncoding="ISO-8859-1" import="java.sql.*, net.database.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Selection</title>
</head>

<%
response.setHeader("Cache-control", "no-store");
HttpSession session1 = request.getSession();
 
	Connection connect = null;
	ResultSet result = null;
	PreparedStatement pstmt = null;
			
	DBConnection getConnect = new DBConnection();
	connect = getConnect.getCon();
%>

<body>
<%
int OnlineID = 0;
String Status = "";

String ID[] = request.getParameterValues("selectID"); 
String qry="";
for (int i=0; i<ID.length; i++) {
String RegID=ID[i];
String UpdateQuery = "UPDATE applicant SET WrittenTestCall='Yes' WHERE OnlineID=?";
			pstmt = connect.prepareStatement(UpdateQuery);
			
			pstmt.setString(1, RegID);
			pstmt.executeUpdate();
		}
		
String	 msg = "Candidate has been selected, you can view the list of Selected candidates in <a href='selected.jsp'>Selected Candidates List</a>";
session1.setAttribute("message", msg);		
response.sendRedirect("CandCombReport.ncra");	
%>

</body>
</html>
