package com.apprendreJAVAEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.apprendreJAVAEE.beans.Client;



/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		request.setAttribute("name", name);
		
		String age = request.getParameter("age");
		request.setAttribute("age", age);
		
		String[] noms = {"alice", "karim", "denis"};
		request.setAttribute("noms", noms);
		
		String message = "Au revoir";
		request.setAttribute("variable", message);
		
		//javabeans
		
		Client client = new Client();
		client.setPrenom("Karim");
		client.setNom("Rgaibi");
		client.setAge(17);
		client.setActif(true);		
		request.setAttribute("client", client);
		
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/hello.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
