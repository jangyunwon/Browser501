<%@page import="java.util.Enumeration"%>
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
String param1 = application.getInitParameter("logEnabled");
String param2 = application.getInitParameter("debugLevel");
out.println("logEnabled"+param1+"<br>"+"debugLebel"+param2);


%>
<hr>
<%

Enumeration<String> e = application.getInitParameterNames();
while(e.hasMoreElements()){
	String name = e.nextElement();
	Object value = application.getInitParameter(name);
	out.println("<li>"+name+" : "+value+"</li>");
}

%>
</body>
</html>