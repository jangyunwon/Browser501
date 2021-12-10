<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC model2 ::: View</title>
</head>
<body>
URL:: http://localhost:8080/Server_Servlet/simple<br>
type:: date한 경우 => 날짜 출력 <hr>


result1(JSP-attribute):: <%= request.getAttribute("result") %><br>
result1(EL-attribute) :: ${result}<br>

result2(JSP-parameter) :: <%= request.getParameter("type") %><br>
result2(EL-parameter) :: ${param.type}
</body>
</html>