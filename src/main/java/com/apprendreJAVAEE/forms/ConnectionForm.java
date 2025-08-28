package com.apprendreJAVAEE.forms;

import jakarta.servlet.http.HttpServletRequest;

public class ConnectionForm {
	
	private String resultat;

	public String getResultat() {
		return resultat;
	}

	public void setResultat(String resultat) {
		this.resultat = resultat;
	}
	
	public void verifierIdentifiant(HttpServletRequest request) {
		String user = request.getParameter("username");
		String pass = request.getParameter("mdp");
		if (pass.equals(user + "123")) {
			resultat = "vous êtes connecté";
		}
		else {
			resultat = "identifiant incorrect";
		}
	}

}
