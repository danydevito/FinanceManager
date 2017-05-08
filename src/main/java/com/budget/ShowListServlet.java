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
@WebServlet(name = "ShowListServlet")
public class ShowListServlet extends HttpServlet {
    DataBase db = new DataBase();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("user1");
        String password = request.getParameter("pass1");

        db.openConnection();
        db.selectShopping(username);
        db.closeConnection();

        request.setAttribute("username",username);

        getServletContext().getRequestDispatcher("/list.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
