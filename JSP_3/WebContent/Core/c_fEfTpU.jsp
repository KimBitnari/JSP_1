<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Core Tag Example</title>
</head>
<body>

<h2>c:forEach</h2>
<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}"/><p>  
</c:forEach>
<br/>

<h2>c:forTokens</h2>
<c:forTokens items="Rahul-Nakul-Rajesh" delims="-" var="name">  
   <c:out value="${name}"/><p>  
</c:forTokens>
<br/>

<h2>c:param & c:url</h2>
<c:url value="/index1.jsp" var="completeURL"> 
 	<c:param name="trackingId" value="786"/>  
 	<c:param name="user" value="Nakul"/>  
</c:url>  
${completeURL}<p>

</body>
</html>