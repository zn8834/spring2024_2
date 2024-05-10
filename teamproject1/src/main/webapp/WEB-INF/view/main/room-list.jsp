<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h1>채팅방 목록</h1>
	<ul>
	    <c:forEach items="${rooms}" var="list">
	    
	    	<li><a href="/chat/rooms/${list.getId}"><%= list.getName() %></a></li>
	    </c:forEach>
	</ul>
	
</body>
</html> --%>