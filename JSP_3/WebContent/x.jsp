<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XML Tags</title>
</head>
<body>

<h3>x:out - Vegetable Information:</h3>  
<c:set var="vegetable">  
<vegetables>  
    <vegetable>  
      <name>onion</name>  
      <price>40/kg</price>  
    </vegetable>  
 	<vegetable>  
      <name>Potato</name>  
      <price>30/kg</price>  
    </vegetable>  
 	<vegetable>  
      <name>Tomato</name>  
      <price>90/kg</price>  
    </vegetable>  
</vegetables>  
</c:set>  
<x:parse xml="${vegetable}" var="output1"/>  
<b>Name of the vegetable is</b>:  
<x:out select="$output1/vegetables/vegetable[1]/name" /><br>  
<b>Price of the Potato is</b>:  
<x:out select="$output1/vegetables/vegetable[2]/price" />
<br><br> 

<h3>x:parse - Books Info:</h3>  
<c:import var="bookInfo" url="novel.xml"/>  
<x:parse xml="${bookInfo}" var="output2"/>  
<p>First Book title: <x:out select="$output2/books/book[1]/name" /></p>  
<p>First Book price: <x:out select="$output2/books/book[1]/price" /></p>  
<p>Second Book title: <x:out select="$output2/books/book[2]/name" /></p>  
<p>Second Book price: <x:out select="$output2/books/book[2]/price" /></p>
<br>

<h3>x:set</h3> 
<x:parse xml="${vegetable}" var="output3"/>  
<x:set var="fragment" select="$output3/vegetables/vegetable[3]/price"/>  
<b>The price of the Tomato is</b>:  
<x:out select="$fragment" />
<br><br>

<h3>x:chhoose & x:when & x:otherwise</h3>
<x:parse xml="${vegetable}" var="output4"/>  
<x:choose>  
   <x:when select="$output4//vegetable/name = 'onion'">  
      Name of the vegetable is onion  
   </x:when>  
   <x:when select="$output4//vegetable/name = 'tomato'">  
      Name of the vegetable is Tomato  
   </x:when>  
   <x:otherwise>  
      Name of the vegetable is unknown...  
   </x:otherwise>  
</x:choose> 
<br><br>

<h3>x:if</h3>
<c:import var="bookInfom" url="novel.xml"/>  
<x:parse xml="${bookInfom}" var="output5"/>
<x:if select="$output5/books/book/price < 1000">  
   Vegetables prices are very low.  
</x:if> 
<br><br>

<c:import var="xml" url="transfer.xml" />  
<c:import var="xsl" url="transfer.xsl" />  
<x:transform xml="${xml}" xslt="${xsl}" />

</body>
</html>