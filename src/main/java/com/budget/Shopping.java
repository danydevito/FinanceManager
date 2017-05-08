package com.budget;

/**
 * Created by daniel on 2017-03-31.
 */
public class Shopping {
    private int id;
    private String shop;
    private float amount;
    private String date;
    private String userName;

    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id=id;
    }
    public String getShop(){
        return shop;
    }
    public void setShop(String shop){
        this.shop = shop;
    }
    public Float getAmount(){
        return amount;
    }
    public void setAmount(float amount){
        this.amount = amount;
    }
    public String getDate(){return date;}
    public void setDate(String date){this.date =date;}

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Shopping(){}
    public Shopping(int id, String shop, float amount, String date, String userName){
        this.id=id;
        this.shop =shop;
        this.amount =amount;
        this.date =date;
        this.userName=userName;
    }
    @Override
    public String toString(){
        return "<td>["+id+"]</td> <td>"+ shop +"</td> <td>"+ amount +"<i> zł </i></td> <td>("+ date +")</td>"+"<td>"+userName+"</td>";
    }
}
