<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>
	<h1>bienvenue dans une nouvelle session</h1>
		<h2>Connexion</h2>
	<form action="session" method="post">
    	<label>Utilisateur :</label>
    	<input type="text" name="login">
    	<br>
    	<label>Mot de passe :</label>
    	<input type="password" name="key">
    	<br>
    	<input type="submit" value="Connexion">
	</form>
	
	<c:if test="${ not empty sessionScope.login }">
		<p> vous etes <c:out value="${ sessionScope.login }"></c:out></p>
	</c:if>
		
</body>
</html>