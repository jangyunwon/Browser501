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
Cookie[] c = request.getCookies();

if(c != null && c.length>0){
	for(int i=0; i<c.length; i++){
	if(c[i].getName().equals("name"));{
		Cookie cookie = new Cookie("name","JSP프로그래밍");
		response.addCookie(cookie);
	}
	}
} else {
	out.println("쿠키가 존재하지 않습니다.");
}
%>
name 쿠키의 값을 변경합니다.<br>
</body>
</html>