package com.mycompany.mycart.servlets;

import com.mycompany.mycart.entities.User;
import com.mycompany.mycart.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            try {
                String name = request.getParameter("user_name");
                String email = request.getParameter("user_email");
                String password = request.getParameter("user_password");
                String phone = request.getParameter("user_phone");
                String address = request.getParameter("user_address");

                // Validations
                if (name == null || name.trim().isEmpty()) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration failed: Name is required.");
                    response.sendRedirect("register.jsp");
                    return;
                }
                if (email == null || email.trim().isEmpty() || !email.contains("@")) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration failed: A valid email is required.");
                    response.sendRedirect("register.jsp");
                    return;
                }
                if (password == null || password.trim().isEmpty()) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration failed: Password is required.");
                    response.sendRedirect("register.jsp");
                    return;
                }
                if (phone == null || phone.trim().isEmpty()) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration failed: Phone number is required.");
                    response.sendRedirect("register.jsp");
                    return;
                }
                if (address == null || address.trim().isEmpty()) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("message", "Registration failed: Address is required.");
                    response.sendRedirect("register.jsp");
                    return;
                }

                // Creating user object to store data
                User user = new User(name, email, password, phone, "default.jpg", address);

                // Persisting the user to the database
                Session hibernateSession = FactoryProvider.getFactory().openSession();
                Transaction tx = hibernateSession.beginTransaction();
                hibernateSession.save(user);
                tx.commit();
                hibernateSession.close();

                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "Registration Successful! User ID: " + user.getUserId());
                response.sendRedirect("register.jsp");
                return;

            } catch (Exception e) {
                e.printStackTrace();
                HttpSession httpSession = request.getSession();
                httpSession.setAttribute("message", "Registration failed: " + e.getMessage());
                response.sendRedirect("register.jsp");
                return;
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Handles user registration";
    }
}