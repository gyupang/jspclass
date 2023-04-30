<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import ="commonch02.Person" %>
        <%
request.setAttribute("requestString", "request 영역의 문자열");
request.setAttribute("requestPerson", new Person("안중근", 31)); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 영역</title>
</head>
<body>
<h2>request 영역의 속성값 삭제하기</h2>
    <%
        request.removeAttribute("requestString"); 
        request.removeAttribute("requestInteger"); // 에러 없음
        //해당 속성이 존재하지 않아도 삭제시도가 정상적으로 처리
    %>
    <h2>request 영역의 속성값 읽기</h2>
    <%
    Person rPerson = (Person)(request.getAttribute("requestPerson"));
    %>
    <ul>
        <li>String 객체 : <%= request.getAttribute("requestString") %></li>
        <li>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></li>
    </ul>
<h2>포워드된 페이지에서 request 영역 속성값 읽기</h2>
    <%
    RequestDispatcher rd= request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English"); 
        rd.forward(request, response);
        //포워드 하면서 쿼리스트링 전달
    %>
</body>
</html>