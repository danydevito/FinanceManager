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
            System.err.println("Problem z otwarciem polaczenia...");
            e.printStackTrace();
        }
    }

    public boolean createTable(){
        try {
            statement.execute("CREATE TABLE IF NOT EXISTS expenses (id INT, shop VARCHAR (25), amount REAL, termin VARCHAR (10), user_name VARCHAR (25));");
            statement.execute("CREATE TABLE IF NOT EXISTS users (id INT, user_name VARCHAR (25), password VARCHAR (25));");
        }catch (SQLException e){
            System.err.println("Blad przy tworzeniu tabeli...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public boolean deleteTable(){
        try {
            statement.execute("DROP TABLE expenses;");
        }catch (SQLException e){
            System.err.println("Blad przy usuwaniu tabeli...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public boolean insertShopping(int number, String shop, float amount, String date, String username){
        try {
            PreparedStatement prepStmt = conn.prepareStatement(
                    "INSERT INTO expenses VALUES ( ?, ?, ?, ?, ?);");
            prepStmt.setInt(1, number);
            prepStmt.setString(2, shop);
            prepStmt.setFloat(3, amount);
            prepStmt.setString(4, date);
            prepStmt.setString(5, username);
            prepStmt.execute();
        }catch (SQLException e){
            System.err.println("Blad przy wprowadzaniu transakcji...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public boolean deleteShopping(int number){
        try {
            PreparedStatement prepStmt = conn.prepareStatement(
                    "DELETE FROM expenses WHERE id= ?;");
            prepStmt.setInt(1, number);
            prepStmt.executeUpdate();
        }catch (SQLException e){
            System.err.println("Blad przy usuwaniu rekordu...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public List<Shopping> selectShopping(String user_name){
        List<Shopping> zakup = new LinkedList<Shopping>();
        try {
            String query = String.format("SELECT * FROM expenses WHERE user_name IS '%s';",user_name);
            ResultSet result = statement.executeQuery(query);
            int id;
            float amount;
            String shop, date, username;
            while (result.next()){
                id=Integer.parseInt(result.getString("id"));
                shop=result.getString("shop");
                amount=Float.parseFloat(result.getString("amount"));
                date=result.getString("termin");
                username=result.getString("user_name");
                zakup.add(new Shopping(id, shop, amount, date, username));
            }
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
        return zakup;
    }
    public boolean insertUsers(int id, String userName, String password){
        try {
            PreparedStatement prepStmt = conn.prepareStatement(
                    "INSERT INTO users VALUES ( ?, ?, ?);");
            prepStmt.setInt(1, id);
            prepStmt.setString(2, userName);
            prepStmt.setString(3, password);
            prepStmt.execute();
        }catch (SQLException e){
            System.err.println("Blad przy wprowadzaniu użytkownika...");
            e.printStackTrace();
            return false;
        }
        return true;
    }
    public List<Users> selectUsers(){
        List<Users> guest = new LinkedList<Users>();
        try {
            ResultSet result = statement.executeQuery("SELECT * FROM users");
            int id;
            String userName;
            String password;
            while (result.next()){
                id=Integer.parseInt(result.getString("id"));
                userName=result.getString("user_name");
                password=result.getString("password");
                guest.add(new Users(id,userName,password));
            }
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
        return guest;
    }
    public void closeConnection(){
        try {
            conn.close();
        }catch (SQLException e){
            System.err.println("Problem z zamknieciem polaczenia...");
            e.printStackTrace();
        }
    }
}
