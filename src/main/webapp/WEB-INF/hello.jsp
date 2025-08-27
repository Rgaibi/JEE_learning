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
  	<h2>bonjour je suis un EL</h2>
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
  
  
  <!-- JSTL et variables -->
  
  <h2>JSTL et variables </h2>
  	<c:set var="niveau" value="5" scope="page" />
  	<p>Bonjour, ton niveau est ${niveau} !</p>
  	<p>ton niveau est <c:out value="${ niveau }" default="inconnu"/></p>
  
    <!-- JSTL et conditions -->
    
   <h2>JSTL et conditionss </h2>
	 bonjour ${ client.prenom }
	<c:if test="${client.age >= 18}">
		Vous êtes majeur.
	</c:if>
	<c:if test="${client.age < 18}">
		Vous êtes mineur.
	</c:if>

	<p>
	<c:choose>
    	<c:when test="${client.age >= 18}">
        Vous êtes majeur.
    	</c:when>
    	<c:otherwise>
        Vous êtes mineur.
    	</c:otherwise>
	</c:choose>
	</p>
	
	
	<!-- JSTL et Boucless -->
	<h2>JSTL et Boucles </h2>
	<p>Liste des noms : 
 		<c:forEach var="nom" items="${noms}">
      		${nom} 
  		</c:forEach>
	</p>
	

 	<c:forEach var="i" begin="0" end="2" step="1">
      	${i} 
  	</c:forEach>
  	
  	<c:forEach var="nom" items="${noms}" varStatus="status">
    	<p>${status.index + 1} - ${nom}</p>
	</c:forEach>
  	
  	
	
	
  

 </body>
</html>