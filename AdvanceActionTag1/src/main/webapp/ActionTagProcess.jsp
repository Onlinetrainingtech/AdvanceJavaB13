<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String e1=request.getParameter("email");

if(e1.equals("admin@gmail.com"))
{
	%>
	
	<jsp:forward page="Sucess.jsp"></jsp:forward>
	
	<%
}

else
{
	%>
	
	<jsp:include page="ActionTagPage.jsp"></jsp:include>
	
	<%
	out.println("LoginFail!!");
}


%>
</body>
</html>