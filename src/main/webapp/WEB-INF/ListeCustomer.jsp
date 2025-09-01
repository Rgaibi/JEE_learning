<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Liste des Clients</title>
</head>
<body>
	<h2>Liste des Clients</h2>

    <table border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>ID</th>
            <th>Sexe</th>
            <th>Éducation</th>
            <th>Mariage</th>
            <th>Âge</th>
        </tr>

       	<c:forEach var="client" items="${customersList}">
            <tr>
                <td>${client.customerId}</td>
                <td>${client.sex}</td>
                <td>${client.education}</td>
                <td>${client.marriage}</td>
                <td>${client.age}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>