package com.apprendreJAVAEE.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.apprendreJAVAEE.bdd.Customer;



/**
 * Servlet implementation class baseDonnées
 */
//@WebServlet("/baseDonnées")
public class baseDonnées extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public baseDonnées() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String url = "jdbc:mysql://localhost:3306/credit_card_database";
        String user = "root";      //
        String password = ""; //  mot de passe

        List<Customer> customers = new ArrayList<>();

        try {
            // Charger le driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            try (Connection cnx = DriverManager.getConnection(url, user, password);
                 Statement stmt = cnx.createStatement();
                 ResultSet rs = stmt.executeQuery("SELECT * FROM clients")) {

                while (rs.next()) {
                    Customer c = new Customer();
                    c.setCustomerId(rs.getInt("client_id"));
                    c.setSex(rs.getString("sex"));
                    c.setEducation(rs.getString("education"));
                    c.setMarriage(rs.getString("marriage"));
                    c.setAge(rs.getInt("age"));
                    customers.add(c);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // Passer la liste à la JSP
        request.setAttribute("customersList", customers);
        this.getServletContext().getRequestDispatcher("/WEB-INF/ListeCustomer.jsp").forward(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
