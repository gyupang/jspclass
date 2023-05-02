<%@page import="utilsch04.JsFunction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
if(session.getAttribute("UserId")==null){
	JsFunction.alertLocation("로그인 후 이용해 주십시오", "../ch06/LoginForm.jsp", out);
    return;
}
//로그인 확인 JSP
%>
