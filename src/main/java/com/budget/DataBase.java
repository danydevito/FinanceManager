package com.budget;

import java.sql.*;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by daniel on 2017-03-29.
 */
public class DataBase {
    public static final String db_url = "jdbc:sqlite:budget.db";
    public static final String driver = "org.sqlite.JDBC";

    private Connection conn;
    private Statement statement;

    public void openConnection(){
        try {
            Class.forName(driver);
        }catch (ClassNotFoundException e){
            System.err.println("Brak sterownika JDBC...");
            e.printStackTrace();
        }
        try {
            conn= DriverManager.getConnection(db_url);
            statement=conn.createStatement();
        }catch (SQLException e){
            System.err.println("Problem z otwarciem połączenia...");
            e.printStackTrace();
        }
    }

    public boolean createTable(){
        try {
            statement.execute("CREATE TABLE IF NOT EXISTS expenses (id INT, shop VARCHAR (25), amount REAL, termin VARCHAR (10));");
        }catch (SQLException e){
            System.err.println("Błąd przy tworzeniu tabeli...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public boolean insertShopping(int number, String shop, float amount, String date){
        try {
            PreparedStatement prepStmt = conn.prepareStatement(
                    "INSERT INTO expenses VALUES ( ?, ?, ?, ?);");
            prepStmt.setInt(1, number);
            prepStmt.setString(2, shop);
            prepStmt.setFloat(3, amount);
            prepStmt.setString(4, date);
            prepStmt.execute();
        }catch (SQLException e){
            System.err.println("Błąd przy wprowadzaniu transakcji...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public List<Shopping> selectShopping(){
        List<Shopping> zakup = new LinkedList<Shopping>();
        try {
            ResultSet result = statement.executeQuery("SELECT * FROM expenses");
            int id;
            float amount;
            String shop, date;
            while (result.next()){
                id=Integer.parseInt(result.getString("id"));
                shop=result.getString("shop");
                amount=Float.parseFloat(result.getString("amount"));
                date=result.getString("termin");
                zakup.add(new Shopping(id, shop, amount, date));
            }
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
        return zakup;
    }
    public void closeConnection(){
        try {
            conn.close();
        }catch (SQLException e){
            System.err.println("Problem z zamknięciem połączenia...");
            e.printStackTrace();
        }
    }
}
