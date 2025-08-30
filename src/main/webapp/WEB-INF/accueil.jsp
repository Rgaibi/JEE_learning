<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
 <head>
  <meta charset="UTF-8">
  <title>accueil</title>
 </head>
 <body>
  <%@ include file = "menu.jsp" %>
  <h1>hello </h1>
  <p>bienvenue sur mon site</p>
  
      <!-- les fichier avec JAVA EE -->
  	<h1>Envoyer des fichiers</h1>
    <form action="accueil" method="post" enctype="multipart/form-data">

    	<fieldset>
        	<legend>Informations sur le fichier</legend>

        	<label for="description">Description du fichier:</label>
       		<input type="text" id="description" name="description" placeholder="Entrez la description" required>
       		<br><br>

        	
        	<label for="fichier">Fichier à envoyer</label>
        	<input type="file" id="fichier" name="fichier">
        	<br>
        	    
    		<input type="submit" value="Envoyer">
        	
    	</fieldset>
  		
	</form>  
	
	<c:if test="${not empty nomFichier}">
		<p>Fichier uploadé avec succès</p>
    	<p>description : <c:out value="${description}" /></p>
    	<p>nom du fichier : <c:out value="${nomFichier}" /></p>
	</c:if>
	
  
 </body>
</html>