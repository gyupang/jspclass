<%@page import="commonch02.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - UseBean</title>
</head>
<body>
 <h3>액션 태그로 폼값 한 번에 받기</h3>
 <jsp:useBean id="person" class="commonch02.Person"/>
 <!-- property="*"로 설정하면 모든 프로퍼티에 대해 자동으로 매핑 -->
 <jsp:setProperty property="*" name="person"/>

    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name" /></li>  
        <li>나이 : <jsp:getProperty name="person" property="age" /></li> 
    </ul>
    
    
    <!-- 기존 자바코드로 받을경우 -->
    
<%--     <%
Person myPerson = new Person();
    //폼 입력값을 받아와서 프로퍼티(속성)에 할당
    myPerson.setName(request.getParameter("name"));
    myPerson.setAge(Integer.parseInt(request.getParameter("age")));
%>

<ul>
    <li>이름 : <%= myPerson.getName() %></li>  
    <li>나이 : <%= myPerson.getAge() %></li> 
</ul> --%>
    
</body>
</html>