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

<c:catch var ="catchtheException">  
   <% int x = 2/0;%>  
</c:catch>

<c:if test = "${catchtheException != null}">  
   <p>The type of exception is : ${catchtheException} <br />  
   There is an exception: ${catchtheException.message}</p>  
</c:if>
<br><br>

<c:set var="income" scope="session" value="${4000*4}"/>  
<c:if test="${income > 8000}">  
   <p>My income is: <c:out value="${income}"/>, It is bigger than 8000.<p>
</c:if>
<c:if test="${income < 20000}">  
   <p>My income is: <c:out value="${income}"/>, It is smaller than 20000.<p>
</c:if>         

</body>
</html>