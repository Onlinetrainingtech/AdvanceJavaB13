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

String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

if(uname.equals("admin")&&pass.equals("admin"))
{
	//out.println("LoginSucess!!");
	RequestDispatcher rd=request.getRequestDispatcher("homepage.jsp");
	rd.forward(request, response);
}
else
{
	//out.println("LoginFail!!!");
	RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
	rd.include(request, response);
}

%>
</body>
</html>