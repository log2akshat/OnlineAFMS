<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<html>
    <body>
        <s:if test="#session.password != '643def90'">
  <jsp:forward page="/Candidate/Login.ncra" />  
  </s:if>
    </body>
</html>
