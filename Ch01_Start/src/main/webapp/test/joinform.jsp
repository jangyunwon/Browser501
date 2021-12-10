<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
    function test() {
      var p1 = document.getElementById('password1').value;
      var p2 = document.getElementById('password2').value;
      if( p1 != p2 ) {
        alert("비밀번호가 일치 하지 않습니다");
        return false;
      } else{
        alert("비밀번호가 일치합니다");
        return true;
      }

    }
  </script>
<body>
<form action = "join.jsp" method= "post">
Id:: <input type = "text" name= "id" required autofocus  ><br>
Password:: <input type = "password" name= "password1" required ><br>
Password확인:: <input type = "password" name= "password2" required ><br>
name:: <input type = "text" name= "name" required  ><br>

<input type = "submit" value="전송">

</form>

</body>
</html>