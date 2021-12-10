<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberInfo" class="member.TestBean"></jsp:useBean>

<jsp:setProperty property="*" name="memberInfo"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>자바빈을 사용하는 JSP페이지</h1>
입력된 이름은 <jsp:getProperty property="name" name="memberInfo"/>입니다.
</body>
</html>