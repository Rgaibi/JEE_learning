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
   	${empty age ? "" : "tu as"} ${ age }
  </h1>
  <p>voilà un paragraphe</p>
  <p> ${ noms[0] } ${ noms[1] }</p>
  <p>
    <%
    String variable = (String) request.getAttribute("variable");
    out.println(variable);
    %>
  </p>
  <h2>bonjour je suis javabean</h2>
  <p>${ client.prenom } ${ client.nom } ${ client.age } ${ client.actif ? "vous êtes actif" : "vous êtes inactif" }</p>
 </body>
</html>