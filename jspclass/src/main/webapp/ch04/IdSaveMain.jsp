<%@page import="utilsch04.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    String loginId = CookieManager.readCookie(request, "loginId");
    //CookieManager의 readCookie 메소드를 사용하여 쿠키 값을 읽어옵니다. 쿠키 이름인 "loginId"를 전달
    String cookieCheck = "";
    if (!loginId.equals("")) {
        cookieCheck = "checked";
    }
    %>
    <%
    Cookie[] cookies = request.getCookies(); // 요청 헤더의 모든 쿠키 얻기
    if (cookies != null) {
    	for (Cookie c : cookies) {
    		String cookieName = c.getName();
    		String cookieValue = c.getValue();
    		out.println(cookieName + " : " + cookieValue + "<br/>");

    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>로그인 페이지</h2>
    <form action="IdSaveProcess.jsp" method="post">
    아이디 : <input type="text" name="user_id" value="<%= loginId %>" />  
        <input type="checkbox" name="save_check" value="Y" <%= cookieCheck %> />
        아이디 저장하기
    <br />
    패스워드 : <input type="text" name="user_pw" />
    <br />
    <input type="submit" value="로그인하기" />
    </form>
</body>
</html>