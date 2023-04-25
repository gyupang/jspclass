<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>3. 요청 헤더 정보 출력하기</h2>
<%
Iterator<String> headers = request.getHeaderNames().asIterator(); 
//요소(element)들을 순차적으로 읽어오는 방법을 제공하는 인터페이스
while (headers.hasNext()) {  
    String headerName = headers.next();  
    String headerValue = request.getHeader(headerName); 
    //헤더에서 지정된 이름의 값을 반환
    out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
}
%>
    <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
    <%-- 링크를 통해 다른사이트로 방문시 남는 흔적 --%>
</body>
</html>