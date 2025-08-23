<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>premier JSP</title>
 </head>
 <body>
  <h1>hello </h1>
  <p>voilà un paragraphe</p>
  <p>
    <%
    String variable = (String) request.getAttribute("variable");
    out.println(variable);
    %>
  </p>
 </body>
</html>