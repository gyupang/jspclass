<%@page import="java.text.SimpleDateFormat"%>
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
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//날짜 포맷 클래스
long add_date = s.parse(request.getParameter("add_date")).getTime(); 

java.sql.Date date2 = new java.sql.Date(add_date); 
System.out.println(date2);

int add_int = Integer.parseInt(request.getParameter("add_int"));
//Integer.parseInt()를 사용하여 int 타입으로 변환
String add_str = request.getParameter("add_str");

%>


</body>
</html>