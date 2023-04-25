<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 지시어 - import 속성</title>
</head>
<body>
<%
Date today = new Date(); // 현재 시간을 가져오는 클래스
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd-HH:mm"); // 날짜 포맷 클래스
String todayStr = dateFormat.format(today);
out.println("오늘 날짜 : " + todayStr);
%>


</body>
</html>