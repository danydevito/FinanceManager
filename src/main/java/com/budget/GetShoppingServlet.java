package com.budget;

import com.budget.DataBase;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Created by daniel on 2017-03-28.
 */
@WebServlet(name = "GetShoppingServlet")
public class GetShoppingServlet extends HttpServlet {
    DataBase db = new DataBase();
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        if (request.getParameter("n1") == null
                || request.getParameter("s1") == null
                || request.getParameter("a1") == null
                || request.getParameter("d1") == null){
            getServletContext().getRequestDispatcher("/wyslij.jsp").forward(request, response);
        }

        int number = Integer.parseInt(request.getParameter("n1"));
        String shop = request.getParameter("s1");
        float amount = Float.parseFloat(request.getParameter("a1"));
        String date = request.getParameter("d1");

        db.openConnection();
        db.createTable();
        db.insertShopping(number, shop, amount, date);
        db.closeConnection();

        getServletContext().getRequestDispatcher("/list.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
