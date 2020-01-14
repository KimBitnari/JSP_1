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

<c:set var="Income" scope="session" value="${4000*4}"/>  
<c:out value="${Income}"/>
<br/><br/>

<p>Before Remove Value is: <c:out value="${Income}"/></p>
<c:remove var="Income"/>  
<p>After Remove Value is: <c:out value="${Income}"/></p> 

</body>
</html>