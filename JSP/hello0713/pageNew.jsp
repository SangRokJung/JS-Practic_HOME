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
int pInt3 = (Integer)(pageContext.getAttribute("pageInteger"));
%>
<h2> Integer3 : <%= pInt3 %> </h2>
</body>
</html>