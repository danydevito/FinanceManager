package com.budget;

/**
 * Created by daniel on 2017-04-12.
 */
public class Users {
    private int id;
    private String userName;
    private String password;

    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    public Users(int id, String userName, String password){
        this.id=id;
        this.userName=userName;
        this.password=password;
    }

    @Override
    public String toString() {
        return "<option value="+userName+"></option>";
    }
}
