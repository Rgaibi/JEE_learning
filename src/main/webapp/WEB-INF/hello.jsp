<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>premier JSP</title>
 </head>
 <body>
  <%@ include file = "menu.jsp" %>
  <h1>hello
   	<%
   	String name = (String) request.getAttribute("name");
  	out.println(name);
   	%> 
  </h1>
  <p>voilà un paragraphe</p>
  <p>
    <%
    String variable = (String) request.getAttribute("variable");
    out.println(variable);
    %>
  </p>
 </body>
</html>