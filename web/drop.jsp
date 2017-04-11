<%@ page import="com.budget.DataBase" %>
<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 2017-03-28
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twój domowy budżet</title>
    <link href="https://fonts.googleapis.com/css?family=Jura" rel="stylesheet">
    <link rel="stylesheet" href="Style.css">
</head>

<body>
<div class="container">
    <header>
        <div class="title">
            <h1>Baza danych została wyczyszczona!</h1>
        </div>
        <nav>
            <ul>
                <li class="home"><a href="index.jsp"><span>Menu główne</span></a> </li>
            </ul>
        </nav>
    </header>
    <%
        DataBase db = new DataBase();
        db.openConnection();
        db.deleteTable();
        db.closeConnection();
    %>

    <div class="content">
        <div class="main-content">
            <section>
                <footer>Wszelskie prawa zastrzeżone &copy;</footer>
            </section>
        </div>
        <div class="sidebar">
            <section>
                <article id="info">
                    <h2>Gospodarka</h2>
                    <aside>
                        <p> PiS deklarował w zeszłym roku, że nie ma planów, by wojewodowie przejęli od marszałków zarządzanie
                            regionalnymi programami operacyjnymi. Faktycznie nic takiego się nie wydarzyło, ale rząd wymyślił inny
                            mechanizm zwiększający jego kontrolę nad tym, jak w regionach wydawane są miliardy euro. Planowane jest
                            włączenie wojewodów w prace komitetów monitorujących programy operacyjne i komisji oceniających projekty.
                            Będą oni też mieli prawo do przeprowadzania doraźnych kontroli, np. w urzędach marszałkowskich. </p>
                    </aside>
                </article>
            </section>
        </div>
    </div>
</div>
</body>
</html>


