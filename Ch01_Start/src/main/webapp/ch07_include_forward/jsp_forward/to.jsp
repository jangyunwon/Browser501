<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP:forward(180)</title>
</head>
<body>
to.jsp페이지 입니다.<br>
<img src="jsp_forward.jpg"><br>
JSP(ID):: <%=request.getParameter("id") %><br>
EL(ID):: ${param.id }<br><hr>
JSP(ID):: <%=request.getAttribute("number")%><br>
EL(ID):: ${number}<br><hr>
JSP(NAME)::<%=request.getParameter("name") %>
</body>
</html>