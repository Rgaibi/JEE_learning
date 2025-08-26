<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
  <p>bonjour je suis un EL</p>
  <p> ${ noms[0] } ${ noms[1] }</p>
  <p>
    <%
    String variable = (String) request.getAttribute("variable");
    out.println(variable);
    %>
  </p>
  
  <!-- utiliser Expression Language (EL) pour accéder aux propriétés de JavaBean client -->
  
  <h2>bonjour je suis javabean</h2>
  <p>${ client.prenom } ${ client.nom } ${ client.age } ${ client.actif ? "vous êtes actif" : "vous êtes inactif" }</p>
  <p><c:set target="${ client}" property="prenom" value="alice"/></p>
  <p><c:out value="${ client.prenom }"/></p>
  
  <!-- utiliser JSTL -->
  
  <c:set var="niveau" value="5" scope="page" />
  <p>Bonjour, ${niveau} !</p>
  <p><c:out value="${ niveau }" default="inconnu"/></p>

 </body>
</html>