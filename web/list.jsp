<%@ page import="com.budget.DataBase" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.budget.Shopping" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 2017-04-04
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twój domowy budzet</title>
</head>
<body>
<h1>Lista Twoich wydatkow</h1>
<%
    DataBase db = new DataBase();
    db.openConnection();
    db.selectShopping();
    List<Shopping> zakup = db.selectShopping();
    for (Shopping s:zakup){
        out.println(s+"<br/>");
    }
    db.closeConnection();
%>
<p><font color="#a52a2a">Powrót do <a href="/index.jsp">menu glowne</a> </font> </p>

</body>
</html>
