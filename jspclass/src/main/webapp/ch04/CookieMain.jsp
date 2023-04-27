<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 Cookie 설정</title>
</head>
<body>
<%
Cookie cookie = new Cookie("myCookie", "쿠키먹자");  // 쿠키 생성
cookie.setPath(request.getContextPath());  // 경로를 컨텍스트 루트로 설정, 애플리케이션의 모든경로
cookie.setMaxAge(3600);  // 유지 기간을 1시간으로 설정
response.addCookie(cookie);  // 응답 헤더에 쿠키 추가
%>

  <h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
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
  
    <h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
    <a href="CookieResult.jsp">
        다음 페이지에서 쿠키값 확인하기
    </a>
  
</body>
</html>