<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

   <c:choose>
      <c:when test="${empty userList }">
         회원이 존재하지 않습니다.
      </c:when>
      <c:otherwise>
         <table border="1">
            <tr>
               <th>순번</th>
               <th>아이디</th>
               <th>비밀번호</th>
               <th>이름</th>
               <th>이메일</th>
            </tr>
<!--             var : ArrayList에서 꺼내온 객체 하나를 담는 임시 변수  -->
            <c:forEach var="user" items="${userList}" varStatus="idx">
            <%---varStatus : 반복횟수를 제공해주는 변수(count = 1부터 시작/index = 0부터 시작) --%>
               <tr>
                  <td>${idx.count }</td>
                  <td>${user.id }</td>
                  <td>${user.password }</td>
                  <td>${user.name }</td>
                  <td>${user.email }</td>
               </tr>   
            </c:forEach>
         </table>
      </c:otherwise>
   </c:choose>

   
</body>
</html>