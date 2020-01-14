<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSTL Functions</title>
</head>
<body>

<h2>fn:contains</h2>
<c:set var="String1" value="Welcome to javatpoint"/>  
<c:if test="${fn:contains(String1, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>
<br/>

<h2>fn:containsIgnoreCase</h2>
<c:set var="String2" value="Welcome to javatpoint"/>  
<c:if test="${fn:containsIgnoreCase(String2, 'javatpoint')}">  
   <p>Found javatpoint string<p>  
</c:if>  
<c:if test="${fn:containsIgnoreCase(String2, 'JAVATPOINT')}">  
   <p>Found JAVATPOINT string<p>  
</c:if>
<br/>

<h2>fn:endsWith</h2>
<c:set var="String3" value="Welcome to JSP programming"/>  
<c:if test="${fn:endsWith(String3, 'programming')}">  
   <p>String ends with programming<p>  
</c:if>   
<br/>

<c:set var="string4" value="It is first String."/>  
<c:set var="string5" value="It is <xyz>second String.</xyz>"/>  
<h3>With escapeXml() Function:</h3>  
<p>string-1 : ${fn:escapeXml(string4)}</p>  
<p>string-2 : ${fn:escapeXml(string5)}</p>  
<h3>Without escapeXml() Function:</h3>  
<p>string-1 : ${string4}</p>  
<p>string-2 : ${string5}</p>
<br/> 

<h3>fn:indexOf()</h3>
<c:set var="string6" value="It is first String."/>  
<c:set var="string7" value="It is <xyz>second String.</xyz>"/>  
<p>Index-1 : ${fn:indexOf(string6, "first")}</p>  
<p>Index-2 : ${fn:indexOf(string7, "second")}</p>
<br/>

<h3>fn:trim()</h3>
<c:set var="str1" value="Welcome to JSP        programming         "/>  
<p>String-1 Length is : ${fn:length(str1)}</p>  
<c:set var="str2" value="${fn:trim(str1)}" />  
<p>String-2 Length is : ${fn:length(str2)}</p>  
<p>Final value of string is : ${str2}</p> 
<br/>

<h3>fn:startsWith()</h3>
<c:set var="msg" value="The Example of JSTL fn:startsWith() Function"/>  
The string starts with "The": ${fn:startsWith(msg, 'The')}  
<br>The string starts with "Example": ${fn:startsWith(msg, 'Example')} 
<br/><br/> 

<h3>fn:split()&fn:join()</h3>
<c:set var="str3" value="Welcome-to-JSP-Programming."/>  
<c:set var="str4" value="${fn:split(str3, '-')}" />  
<c:set var="str5" value="${fn:join(str4, ' ')}" />  
<p>String-3 : ${str3}</p>  
<c:set var="str6" value="${fn:split(str5, ' ')}" />  
<c:set var="str7" value="${fn:join(str6, '-')}" />  
<p>String-5 : ${str7}</p>
<br/> 

<h3>fn:toLowerCase()</h3>
<c:set var="string8" value="Welcome to JSP Programming"/>  
${fn:toLowerCase("HELLO,")}  
${fn:toLowerCase(string8)}  
<br><br>

<h3>fn:toUpperCase()</h3>
<c:set var="site" value="javatpoint.com"/>  
<c:set var="author" value="Sonoo Jaiswal"/>  
Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}. 
<br><br>

<h3>fn:substring()</h3>
<c:set var="string9" value="This is the first string."/>  
${fn:substring(string9, 5, 17)}
<br><br>

<h3>fn:substringAfter()</h3>
<c:set var="string10" value="Nakul Jain nari nari"/>  
${fn:substringAfter(string10, "Nakul")}
<br><br>

<h3>fn:substringBefore()</h3>
<c:set var="string11" value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL."/>  
${fn:substringBefore(string11, "developed")}
<br><br>

<h3>fn:length()</h3>
<c:set var="str8" value="This is first string"/>  
<c:set var="str9" value="Hello"/>  
Length of the String-1 is: ${fn:length(str8)}<br>  
Length of the String-2 is: ${fn:length(str9)}
<br><br>

<h3>fn:replace()</h3>
<c:set var="author2" value="Ramesh Kumar"/>  
<c:set var="string12" value="pqr xyz abc PQR"/>  
${fn:replace(author2, "Ramesh", "Suresh")}<br> 
${fn:replace(string12, "pqr", "hello")}

</body>
</html>