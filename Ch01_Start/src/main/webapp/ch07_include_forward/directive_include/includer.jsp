<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Directive Include</title>

</head>
<body>
<img src="directive_include.png"><br>
<% 
//한페이지로 인식하여 컴파일한다 (변수 공유)
int number = 10;
%>

<%@ include file = "includee.jspf" %>

공통변수 DATAFOLDER="<%= dataFolder %>"
</body>
</html>
