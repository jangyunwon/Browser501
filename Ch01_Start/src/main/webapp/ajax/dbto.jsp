<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String money = request.getParameter("money");
%>
<%
/* String name1 = request.getParameter("name");
String age1 = request.getParameter("age");
String money1 = request.getParameter("money"); */

try{
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url= "jdbc:oracle:thin:@localhost:1521:oracle";
	Class.forName(driver);
	Connection con = DriverManager.getConnection(url,"jsp","jsp");
	Statement stmt = con.createStatement();
	String sql = "insert into join values("+name+","+age+","+money+")";
	stmt.executeQuery(sql);
	con.close();
	stmt.close();
		
}catch(Exception e){
	System.out.println(e.getMessage());
	
}

%>
</body>
</html>