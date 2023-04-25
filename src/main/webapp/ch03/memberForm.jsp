<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록창</title>
</head>
<body>
	<form method="post" action="${contextPath}/ch03/memberInfo.jsp">
	
	<h1 style="text-align:center">회원 등록창</h1>
	<table>
		<tr>
			<td><p align="right">아이디</td>
			<td><input type="text" name="id"></td>
		</tr>
		
		<tr>
			<td><p align="right">비밀번호</td>
			<td><input type="password" name="pwd"></td>
		</tr>
		
		<tr>
			<td><p align="right">이름</td>
			<td><input type="text" name="name"></td>
		</tr>
		
		<tr>
			<td><p align="right">이메일</td>
			<td><input type="text" name="email"></td>
		</tr>
		
		<tr>
			<td><p>&nbsp;</p></td>
			<td>
				<input type="submit" value="가입하기">
				<input type="reset" value="다시입력">
			</td>
		</tr>
	</table>
	</form>
</body>
</html>