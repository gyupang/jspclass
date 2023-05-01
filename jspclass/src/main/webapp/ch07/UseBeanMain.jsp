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
	<h2>useBean 액션 태그</h2>
	<h3>자바빈즈 생성하기</h3>
	<!-- Person 클래스의 인스턴스를 생성하고, 해당 인스턴스를 변수에 할당 -->
	<!-- id로 객체생성 -->
	<jsp:useBean id="person" class="commonch02.Person" scope="request" />
	<!--  setProperty 액션 태그로 자바빈즈 속성 지정하기 -->
	<jsp:setProperty property="name" name="person" value="임꺽정" />
	<jsp:setProperty property="age" name="person" value="41" />

	<h3>getProperty 액션 태그로 자바빈즈 속성 읽기</h3>
	<ul>
		<li>이름 : <jsp:getProperty name="person" property="name" /></li>
		<li>나이 : <jsp:getProperty name="person" property="age" /></li>
	</ul>


	<%--
	//원래 자바 코드사용
	Person myPerson = new Person();
	//request 영역에 지정
	request.setAttribute("person", myPerson);
	
	//속성 지정하기
	myPerson.setName("임꺽정");
myPerson.setAge(41);
	--%>
	
<%-- 	<h3>getAttribute 자바 코드로 속성 읽기</h3>
	<ul>
    <li>이름 : <%=((Person) request.getAttribute("person")).getName()%></li>  
    <li>나이 : <%= myPerson.getAge() %></li> 
	</ul> --%>

</body>
</html>