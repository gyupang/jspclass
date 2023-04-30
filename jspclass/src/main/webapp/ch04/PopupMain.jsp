<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String popupMode = "on";
// 팝업창 조건문에서 사용할수 있음
Cookie[] cookies = request.getCookies(); // 요청 헤더의 모든 쿠키 얻기
if (cookies != null) {
	for (Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieValue = c.getValue();
		out.println(cookieName + " : " + cookieValue + "<br/>");
		if (cookieName.equals("PopupClose")) {
	popupMode = cookieValue;
		}
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키를 이용한 팝업 관리</title>
<style>
div#popup {
	position: absolute;
	top: 100px;
	left: 50px;
	color: yellow;
	width: 270px;
	height: 100px;
	background-color: gray;
}

div#popup>div {
	position: relative;
	background-color: #ffffff;
	top: 0px;
	border: 1px solid gray;
	padding: 10px;
	color: black;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		$('#closeBtn').click(function() {
			$('#popup').hide();
			var chkVal = $("input:checkbox[id=inactiveToday]:checked").val();
			//체크박스의 값을 가져오기 위한 코드 value="1"
			$.ajax({ 
				//비동기 요청을 보냄
				url : './PopupCookie.jsp',
				type : 'get',
				data : {
					inactiveToday : chkVal
				},
				dataType : "text",
				success : function(resData) {
					if (resData != '')
						//빈값이 아니면 페이지 새로고침
						location.reload();
				}
			});

		});
	});
</script>
</head>
<body>
	<h2>팝업 메인 페이지</h2>
	<%
	out.print("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");

	if (popupMode.equals("on")) {
	%>
	<div id="popup">
		<h2 align="center">공지사항 팝업입니다.</h2>
		<div align="right">
			<form name="popFrm">
				<input type="checkbox" id="inactiveToday" value="1" /> 하루 동안 열지 않음
				<input type="button" value="닫기" id="closeBtn" />
			</form>
		</div>
	</div>
	<%
	}
	%>
</body>
</html>