package com.ebazar.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class LaptopController
 */
@WebServlet("/laptopcontroller")
public class LaptopController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LaptopController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// Get Selected Product

				String product =
				request.getParameter("product");

				// Create Session

				HttpSession session =
				request.getSession();

				// Get Cart Data

				ArrayList<String> cart = (ArrayList<String>) session.getAttribute("cart");

				// If Cart Empty

				if(cart == null){

					cart = new ArrayList<String>();
				}

				// Add Product To Cart

				if(product != null){

					cart.add(product);
				}

				// Save Cart In Session

				session.setAttribute("cart", cart);

				// Redirect To Cart Page

				response.sendRedirect("cart.jsp");

	}

}
