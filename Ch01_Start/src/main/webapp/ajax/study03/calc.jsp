<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% //여기는 자바^^
	String value1 = request.getParameter("v1"); //id가 아닌 name값
	int v1 = Integer.parseInt(value1);
	String value2 = request.getParameter("v2"); // jsp는 무조건 문자로 인식
	int v2 = Integer.parseInt(value2);
	System.out.println(v1+v2);
	out.print(v1+v2);
	//숫자로 바꿔줘야 연산이 가능하다
%>
