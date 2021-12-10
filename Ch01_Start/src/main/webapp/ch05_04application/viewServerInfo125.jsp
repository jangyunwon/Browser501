<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
application :  Scope/Attribute<br>
application : JSP 기본객체중의 하나<br>
			: javax.servlet.servletcontext<br>
			: 서버가 시작해서 종료될때까지 일련의 변수를 공유<br>
<img src= "jsp기본객체 영역.png"><br>
서버정보:: <%= application.getServerInfo() %><br>
서블릿 메이저 버젼 : <%=application.getMajorVersion() %> <br>
서블릿 마이너 버젼 : <%=application.getMinorVersion() %><br>

<%
String param1 = application.getInitParameter("logEnabled");
String param2 = application.getInitParameter("debugLevel");
out.println("logEnabled"+param1+"<br>"+"debugLebel"+param2);


%>
</body>
</html>