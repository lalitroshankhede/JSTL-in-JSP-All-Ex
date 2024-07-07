<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

.errorDiv
{
   
   padding:20px;
   background-color:crimson;
   color:white;

}

</style>

</head>
<body>


<div class="errorDiv">

<h2> Sorry Exception is Occur</h2>

Exception is : <%= exception %>


</div>

</body>
</html>