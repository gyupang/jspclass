<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="common.Person" %>
<!--   Person DTO 임포트 -->
    <%
    pageContext.setAttribute("pageInteger", 1000);
    pageContext.setAttribute("pageString", "페이지 스코프 문자열");
    pageContext.setAttribute("pagePerson", new Person("한석봉",39));
    //common 패키지의 Person 클래스는 , Person 객체를 생성하여 page scope에 "pagePerson"으로 저장
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 영역</title>
</head>
<body>
 <h2>page 영역의 속성값 읽기</h2>
    <%
    // 속성 읽기
    int pInteger = (Integer)(pageContext.getAttribute("pageInteger"));
    String pString = pageContext.getAttribute("pageString").toString();
    Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
    %>
    <ul>
        <li>Integer 객체 : <%= pInteger %></li>
        <li>String 객체 : <%= pString %></li>
        <li>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
    </ul>
   
    <%-- el태그 사용시 바로 pageScope 찾아서 출력가능
        <ul>
        <li>Integer 객체 : ${pageScope.pageInteger}</li>
        <li>String 객체 : ${pageScope.pageString}</li>
        <li>Person 객체 : ${pageScope.pagePerson.name}, ${pageScope.pagePerson.age}</li>
    </ul>
     --%>

    <h2>include된 파일에서 page 영역 읽어오기</h2>
    <%@ include file="PageInclude.jsp" %>
       
    <h2>페이지 이동 후 page 영역 읽어오기</h2>
    <a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>