<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope:영역,범위</title>
</head>
<body>
<img src="jsp기본객체 영역.png"><br><br>
pageContext Scope: 하나의 jsp페이지 안에서 사용(변수)<br>
request Scope: include, forward를 통해서 다른 페이지에서도 사용(변수)<br>
session Scope: browser 상태에서 페이지 이동시 사용(변수 공유)<br>
application Scope : 서버가 동작하는 시간동안 사용(변수 공유: 방문자 수)<br><hr>

<%
	pageContext.setAttribute("page", "page1");//이름(변수),값
	request.setAttribute("request", "request1");
	session.setAttribute("session", "session1");
	application.setAttribute("application","application1");
	
%>


<% // request 영역에 데이터 저장시 forward, include 통해서 사용		
RequestDispatcher d = request.getRequestDispatcher("other_scope.jsp");

d.forward(request, response);
%>

pageContext out: <%=pageContext.getAttribute("page") %> <br>
request out: <%=request.getAttribute("request") %> <br>
session out:<%=session.getAttribute("session") %>  <br>
application out: <%=application.getAttribute("application") %> <br>
</body>
</html>