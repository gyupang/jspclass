<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그 - forward</title>
</head>
<body>
    <h2>액션태그 포워드 결과</h2>
        <ul>
        <li>
            page 영역 : <%= pageContext.getAttribute("pAttr") %>
            <!-- null 개별페이지라 공유 안됨 -->
        </li>
        <li>
            request 영역 : <%= request.getAttribute("rAttr") %> 
            <!-- 불러옴 -->
        </li>
    </ul>
    
    
</body>
</html>