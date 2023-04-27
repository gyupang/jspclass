<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
    <%
    Cookie[] cookies = request.getCookies(); // 요청 헤더의 모든 쿠키 얻기
    if(cookies !=null){
  	  for (Cookie c : cookies){
  		  String cookieName = c.getName(); 
  		  String cookieValue = c.getValue();
  		  out.println(cookieName + " : " + cookieValue + "<br/>");
  	  }
    }
    
    %>
    
</body>
</html>