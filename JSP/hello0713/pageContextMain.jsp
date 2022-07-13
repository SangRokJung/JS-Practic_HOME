<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="common.Person" %>
    
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "이순신");
pageContext.setAttribute("pagePerson", new Person("홍길동", 27));
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>pageContextMain</title>
</head>
<body>
<h2>pageContext의 Attribute 읽어보기</h2>
<%
int pInt 		= (Integer)(pageContext.getAttribute("pageInteger"));
String pString 	= (pageContext.getAttribute("pageString")).toString();
Person pPerson 	= (Person)(pageContext.getAttribute("pagePerson"));

%>
<ul>
	<li>정수 : <%= pInt %></li>
	<li>문자열 : <%= pString %></li>
	<li>Person : name <%= pPerson.getName() %>, age <%= pPerson.getAge() %></li>

</ul>

<h2>include pageInclude.jsp</h2>
<%@ include file="pageInclude.jsp"  %>


<h2>move pageNew.jsp</h2>
<a href="pageNew.jsp">pageNew로 이동</a>
</body>
</html>



