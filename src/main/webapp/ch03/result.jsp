<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// 값이 넘어오는지 디버깅하여 확인하는 용도 
	request.setCharacterEncoding("UTF-8");
	String id = (String)request.getParameter("id");
	System.out.print("id : " + id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과창</title>
</head>
<body>

	<c:if test="${empty param.id}">
		아이디를 입력하세요.<br>
		<a href="login.jsp">로그인 창</a>
	</c:if>
	<c:if test="${not empty param.id}">
		<h1>
			<c:out value="${param.id}"/>님 환영합니다.
		</h1>
	</c:if>
</body>
</html>