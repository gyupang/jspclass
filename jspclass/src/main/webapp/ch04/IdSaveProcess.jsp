<%@page import="utilsch04.JsFunction"%>
<%@page import="utilsch04.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
//폼 값얻기
String user_id=request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String save_check = request.getParameter("save_check");  

if ("must".equals(user_id) && "1234".equals(user_pw)) {
	  // 로그인 성공
    if (save_check != null && save_check.equals("Y")) { 
		   CookieManager.makeCookie(response, "loginId", user_id, 86400); 
		   //폼에서 입력된 user_id 값을 받아와서 쿠키에 "loginId" 이름으로 저장
	}
	 else {
	        CookieManager.deleteCookie(response, "loginId"); 
	    }
	    JsFunction.alertLocation("로그인에 성공했습니다.", "IdSaveMain.jsp", out); 
	}
	else {
	    // 로그인 실패
	    JsFunction.alertBack("로그인에 실패했습니다.", out);  
	}


%>
