<%@page import="java.util.Arrays"%>
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
request.setCharacterEncoding("UTF-8");  
//request 문자 인코딩 방식을 설정
String id = request.getParameter("id");  
String sex = request.getParameter("sex");
String[] favo = request.getParameterValues("favo");  
//favo 매개변수의 모든 값을 가져온다 . 이때 반환되는 값은 String[] 형태로 반환

String favos = Arrays.toString(favo);
//배열째로 출력
String favoStr = "";
if (favo != null) {  
    for (int i = 0; i < favo.length; i++) {
        favoStr += favo[i] + " ";
        //favo 배열에 있는 값을 하나씩 가져와 favoStr에 추가
    }
}
String intro = request.getParameter("intro").replace("\r\n", "<br/>"); 
//줄바꿈 처리 출력 변환
%>
<ul>
    <li>아이디 : <%= id %></li>
    <li>성별 : <%= sex %></li>
    <li>관심사항 : <%= favoStr %></li>
    <li>관심사항 : <%= favos %></li>
    <li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>