<%@ page import="com.budget.DataBase" %>
<%@ page import="com.budget.Shopping" %>
<%@ page import="java.util.List" %><%--
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
            <h1>Wybierz rekord do usunięcia</h1>
        </div>
        <nav>
            <ul>
                <li class="home"><a href="index.jsp"><span>Menu główne</span></a> </li>
            </ul>
        </nav>
    </header>

    <div class="content">
        <div class="main-content">
            <article id="instr">
                <aside>
                    <table border="4" cellpadding="5" cellspacing="3" bgcolor="#f5f5dc">
                        <%
                            DataBase db = new DataBase();
                            db.openConnection();
                            db.selectShopping();
                            List<Shopping> zakup = db.selectShopping();
                            for (Shopping s:zakup){
                                out.println("<tr>"+s+"</tr><br/>");
                            }
                            db.closeConnection();
                        %>
                    </table>
                    <form action="/delete" method="post">
                        Usun rekord numer:
                        <input type="text" name="del"><br/>
                        <input type="submit" value="Usun">
                    </form>
                </aside>
            </article>
            <section>
                <footer>Wszelskie prawa zastrzeżone &copy;</footer>
            </section>
        </div>
        <div class="sidebar">
            <section>
                <article id="info">
                    <h2>Wiadomości z kraju</h2>
                    <aside>
                        <p> Dekadę narzekano, że Polska, zamiast być producentem zagranicznych samochodów, staje się zaledwie dostawcą
                            dla nich komponentów. Dziś jesteśmy europejską potęgą w ich produkcji. A przy tym polskie firmy wyszły za
                            granicę i wytwarzają części na całym świecie, od Brazylii po Chiny. Popyt rośnie, bo konsumenci znów ustawiają się
                            w kolejkach po nowe samochody. W zeszłym roku produkcja aut w Europie wzrosła o 4 proc. i przekroczyła 18,8 mln sztuk.
                            Według Eurostatu po trzech kwartałach 2016 roku eksport części samochodowych z Polski przekroczył 14,6 mld euro
                            i był lepszy o 6,6 proc. niż rok wcześniej. Nasz kraj staje się zapleczem dla europejskiego przemysłu motoryzacyjnego.</p>
                    </aside>
                </article>
            </section>
        </div>
    </div>
</div>
</body>
</html>



