<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd");
// getParameter 로 user_ 아디와 비번값을 가져온다.
if(id.equalsIgnoreCase("must")&&pwd.equalsIgnoreCase("1234")){
	//equalsIgnoreCase 대소문자 구분없이 id pwd를 비교
	response.sendRedirect("ResponseEnter.jsp");
	//일치하면 sendRedirect 리다이렉트 시킴 , URL 이동
}else{
	request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
	.forward(request, response);
	//실패 시 포워드를 사용하여 로그인 페이지로 이동시키면
	// 로그인 실패와 관련된 메시지 등을 함께 전달 가능
}

%>
</body>
</html>