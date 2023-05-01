<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String pValue="방랑시인";
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - param</title>
</head>
<body>
<!-- 자바빈즈 생성  -->
<jsp:useBean id="person" class="commonch02.Person" scope="request" />
<!--  setProperty 액션 태그로 자바빈즈 속성 지정하기 -->
<jsp:setProperty property="name" name="person" value="김삿갓"/>
<jsp:setProperty property="age" name="person" value="56"/>
<!--  param 액션 태그로 param 속성 지정하기 -->
<jsp:forward page="ParamForward.jsp?param1=김병연">
<jsp:param value="경기도양주" name="param2"/>
<jsp:param value="<%=pValue%>" name="param3"/>
</jsp:forward>
<!-- forward 포워드할때 param 전달 -->


</body>
</html>