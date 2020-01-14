<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fmt</title>
</head>
<body>

<h3>The fmt:parseNumber tag Example is:</h3>  
<c:set var="Amount" value="786.970" />  
    <fmt:parseNumber var="j" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>  
    <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />  
    <p><i>Amount is:</i>  <c:out value="${j}" /></p>
<br>

<h3>Formatting of Number:</h3>  
<c:set var="Amount2" value="9850.14115" />  
<p> Formatted Number-1:  
<fmt:formatNumber value="${Amount2}" type="currency" /></p>  
<p>Formatted Number-2:  
<fmt:formatNumber type="number" groupingUsed="true" value="${Amount2}" /></p>  
<p>Formatted Number-3:  
<fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount2}" /></p>  
<p>Formatted Number-4:  
<fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount2}" /></p>  
<p>Formatted Number-5:  
<fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount2}" /></p>  
<p>Formatted Number-6:  
<fmt:formatNumber type="number" pattern="###.###$" value="${Amount2}" /></p> 
<br>

<h3>Parsed Date:</h3>  
<c:set var="date" value="12-08-2016" />  
<fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />  
<p><c:out value="${parsedDate}" /></p>
<br>

<h3>fmt:setTimeZone</h3> 
<c:set var="date" value="<%=new java.util.Date()%>" />  
<p><b>Date and Time in Indian Standard Time(IST) Zone:</b> <fmt:formatDate value="${date}"  
             type="both" timeStyle="long" dateStyle="long" /></p>  
<fmt:setTimeZone value="GMT-10" />  
<p><b>Date and Time in GMT-10 time Zone: </b><fmt:formatDate value="${date}"  
             type="both" timeStyle="long" dateStyle="long" /></p>
<br>

<h3>Different Formats of the Date</h3>  
<c:set var="Date" value="<%=new java.util.Date()%>" />  
<p>  
Formatted Time :  
<fmt:formatDate type="time" value="${Date}" />  
</p>  
<p>  
Formatted Date :  
<fmt:formatDate type="date" value="${Date}" />  
</p>  
<p>  
Formatted Date and Time :  
<fmt:formatDate type="both" value="${Date}" />  
</p>  
<p>  
Formatted Date and Time in short style :  
<fmt:formatDate type="both" dateStyle="short" timeStyle="short"  
value="${Date}" />  
</p>  
<p>  
Formatted Date and Time in medium style :  
<fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"  
value="${Date}" />  
</p>  
<p>  
Formatted Date and Time in long style :  
<fmt:formatDate type="both" dateStyle="long" timeStyle="long"  
value="${Date}" />  
</p>
    
</body>
</html>