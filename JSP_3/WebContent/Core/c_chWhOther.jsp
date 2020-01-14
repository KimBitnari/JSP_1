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
<h1>JSTL c:when, c:otherwise, c:choose</h1> 

<c:set var="income" scope="session" value="${4000*4}"/>  
<p>Your income is : <c:out value="${income}"/></p>  
<c:choose>  
    <c:when test="${income <= 1000}">  
       Income is not good.  
    </c:when>  
    <c:when test="${income > 10000}">  
        Income is very good.  
    </c:when>  
    <c:otherwise>  
       Income is undetermined...  
    </c:otherwise>  
</c:choose>
<br> 
  
<c:set value="10" var="num"></c:set>  
<c:choose>  
	<c:when test="${num%2==0}">  
		<c:out value="${num} is even number"></c:out>  
	</c:when>  
	<c:otherwise>  
		<c:out value="${num} is odd number"></c:out>  
	</c:otherwise>  
</c:choose> 

</body>
</html>