<%@ page import="com.budget.DataBase" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="com.budget.Shopping" %>
<%@ page import="java.util.List" %>
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
            <h1>Menedżer finansów</h1>
        </div>
        <nav>
            <ul>
                <li class="home"><a href="index.jsp"><span>Menu główne</span></a> </li>
                <li class="delete"><a href="delete.jsp"><span>Usuń zakup</span></a> </li>
                <li class="drop"><a href="drop.jsp"><span>Skasuj listę</span></a> </li>
            </ul>
        </nav>
    </header>

    <div class="content">
        <div class="main-content">
            <h2>Lista Twoich wydatków</h2>
            <section>

                <article id="instr">
                    <aside>
                        <table border="4" cellpadding="5" cellspacing="3" bgcolor="#f5f5dc">
                            <%
                                DataBase db = new DataBase();
                                db.openConnection();
                                db.selectShopping();
                                List<Shopping> zakup = db.selectShopping();
                                for (Shopping s:zakup){
                                    out.print("<tr>"+s+"</tr><br/>");
                                }
                                db.closeConnection();
                            %>
                        </table>
                    </aside>
                </article>

                <footer>Wszelskie prawa zastrzeżone &copy;</footer>
                </article>
            </section>
        </div>
        <div class="sidebar">
            <section>
                <article id="info">
                    <h2>Wskaźniki ekonomiczne</h2>
                    <aside>
                        <p> Wzrost cen żywności w 2017 r. będzie umiarkowany, ale ze względu na duży udział w koszyku inflacyjnym,
                            żywność będzie głównym czynnikiem zwiększającym inflację w gospodarce - wynika z miesięcznego raportu
                            IERiGŻ. "Rośnie dynamika cen detalicznych żywności, po wielu miesiącach jej relatywnego tanienia.
                            Wzrostowi cen żywności sprzyja poprawa sytuacji na rynku pracy i wyższe dochody konsumentów.
                            Znacznie niższa dynamika sprzedaży żywności niż sprzedaży ogółem wskazuje jednak, że wzrost
                            cen detalicznych żywności w 2017 r. może być umiarkowany, aczkolwiek obecnie żywność jest głównym
                            czynnikiem zwiększającym inflację, ze względu na jej wysoki udział w koszyku
                            wydatków gospodarstw domowych" - napisano w raporcie.</p>
                    </aside>
                </article>
            </section>
        </div>
    </div>
</div>
</body>
</html>

