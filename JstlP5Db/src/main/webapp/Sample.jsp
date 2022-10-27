<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="db" driver="org.h2.Driver"  
         url="jdbc:h2:tcp://localhost/~/advancejava13" user="sa" password=""/>
  
    <sql:query dataSource="${db}" var="rs">  
    select * from adminpage 
    </sql:query>  
       
    <table border="2" width="100%">  
    <tr>  
    <th>AdminId</th>  
    <th>AdminName</th>  
   
     
    </tr>  
    <c:forEach var="table" items="${rs.rows}">  
    <tr>  
    <td><c:out value="${table.ADMINID}"/></td>  
    <td><c:out value="${table.ADMINNAME}"/></td>  
    <%-- <td><c:out value="${table.PRODUCTPRICES}"/></td>   --%>
   
    </tr>  
    </c:forEach>  
    </table>  
</body>
</html>