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

String email=request.getParameter("email");
String pass=request.getParameter("pass");

if(email.equals("admin@gmail.com"))
{
	//Creating the Session
	
	HttpSession sess=request.getSession();
	
	sess.setAttribute("k1",email);
	
	RequestDispatcher rd=request.getRequestDispatcher("SessionPage.jsp");
	rd.forward(request, response);
}
else
{
	Cookie ck=new  Cookie("k2",email);
			
	response.addCookie(ck);
	
	RequestDispatcher rd=request.getRequestDispatcher("CookiePage.jsp");
	rd.include(request, response);
}

%>
</body>
</html>