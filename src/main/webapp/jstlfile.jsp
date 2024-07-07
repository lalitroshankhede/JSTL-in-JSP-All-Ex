<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page contentType="text/html; charset=ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Taglib Directive Example</h1>
	<hr>

	<!-- set attribute -->

	<c:set var="name" value="Lalit R">
	</c:set>


	<%!int num1 = 20;
	int num2 = 10;%>

	<%
	int result = num1 / num2;
	%>


	<h1>
		Division =
		<%=result%></h1>

	<!-- out attribute -->
	<c:out value="${name}"></c:out>



	<!-- import attribute -->

	<c:import var="data" url="http://www.javatpoint.com" />
	<c:out value="${data}" />



	<!-- if attribute -->
	<c:if test="${3>2 }">
		<h2>This is true</h2>
	</c:if>


	<!-- forEach attribute -->
	<c:forEach var="j" begin="1" end="3">  
   Item <c:out value="${j}" />
		<p>
	</c:forEach>




	<c:set var="url" value="0" scope="request" />
	<c:if test="${url<1}">

		<!-- redirect attribute -->
		<c:redirect url="http://javatpoint.com" />
	</c:if>
	<c:if test="${url>1}">
		<c:redirect url="http://facebook.com" />
	</c:if>




	<c:set var="income" scope="session" value="${4000*4}" />
	<p>
		Your income is :
		<c:out value="${income}" />
	</p>

	<!-- choose attribute -->
	<c:choose>

		<!-- when attribute -->
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





</body>
</html>