package com.budget;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by daniel on 2017-04-05.
 */
@WebServlet(name = "DeleteServlet")
public class DeleteServlet extends HttpServlet {
    DataBase db = new DataBase();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int number = Integer.parseInt(request.getParameter("del"));
        db.openConnection();
        db.deleteShopping(number);
        db.closeConnection();

        getServletContext().getRequestDispatcher("/list.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
