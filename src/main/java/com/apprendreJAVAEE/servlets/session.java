package com.apprendreJAVAEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class session
 */
//@WebServlet("/session")
public class session extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public session() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie [] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie cookie : cookies) {
				if (cookie.getName().equals("login")) {
					request.setAttribute("login", cookie.getValue());
				}
			}
		}
		this.getServletContext().getRequestDispatcher("/WEB-INF/session.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		
        String key = request.getParameter("key");

        // Exemple simple de login
        HttpSession session = request.getSession(); // crée  une session
        session.setAttribute("login", login);
        
        //stocker des coockies
        Cookie cookie = new Cookie("login", login);
        cookie.setMaxAge(60 * 60 * 24 * 30);
        response.addCookie(cookie);
        
       

		this.getServletContext().getRequestDispatcher("/WEB-INF/session.jsp").forward(request, response);
		
		
	}

}
