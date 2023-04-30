<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
<jsp:include page="../Link.jsp" />
<%@ include file="../Link.jsp"  %>
	<h2>로그인 페이지</h2>
	<span style="color: red; font-size: 1.2em;"> 
	<%=request.getAttribute("LoginErrMsg") == null ? "" : request.getAttribute("LoginErrMsg")%>
	<!-- 값이 null 이면 빈 문자열("")을 출력하고, 그렇지 않으면 LoginErrMsg 에 저장된 값을 출력 -->
	</span>
    <%
    if (session.getAttribute("UserId") == null) {  // 로그인 상태 확인
        // 로그아웃 상태
    %>
    <script>
    function validateForm(form) {
        if (!form.user_id.value) {
            alert("아이디를 입력하세요.");
            return false;
        }
        if (form.user_pw.value == "") {
            alert("패스워드를 입력하세요.");
            return false;
        }
    }
    </script>
    <form action="LoginProcess.jsp" method="post" name="loginFrm"
        onsubmit="return validateForm(this);">
        <!-- onsubmit은 제출(submit)되기 전에 실행되는 JavaScript 함수 -->
        아이디 : <input type="text" name="user_id" /><br />
        패스워드 : <input type="password" name="user_pw" /><br />
        <input type="submit" value="로그인하기" />
    </form>
 <%
    } else { // 로그인된 상태
    %>
      <%= session.getAttribute("UserName") %> 회원님, 로그인하셨습니다.<br />
        <a href="Logout.jsp">[로그아웃]</a>
         <h2>Session 설정 확인</h2>
    <ul>
        <li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
        <li>세션 아이디 : <%= session.getId() %></li>
        <li>세션 값 : <%= session.getAttribute("UserId") %></li>

    </ul>
       <%
    }
    %>
</body>
</html>