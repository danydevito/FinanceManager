package com.budget;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by daniel on 2017-04-12.
 */
@WebServlet(name = "GetUserServlet")
public class GetUserServlet extends HttpServlet {
    DataBase db = new DataBase();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int number = Integer.parseInt(request.getParameter("user_id"));
        String username = request.getParameter("user_name");
        String password = request.getParameter("password");

        db.openConnection();
        db.createTable();
        db.insertUsers(number, username, password);
        db.closeConnection();
        System.out.println("Użytkownik wprowadzony!");

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
