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
out.println("안녕하세요");
%>
<br>
out 기본 객체를 사용하여
<%
out.println("출력한 결과입니다.");
System.out.println("콘솔창 출력");
%>
<br>
<%="hello2" %><hr>
버퍼크기:: <%=out.getBufferSize() %> <br>
버퍼의 남은크기:: <%=out.getRemaining() %><br>
auto flush :: <br>
session out:<%=session.getAttribute("session") %>  <br>
application out: <%=application.getAttribute("application") %> <br>
</body>
</html>