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
            </ul>
        </nav>
    </header>

    <div class="content">
        <div class="main-content">
            <h2>Wprowadź swoje wydatki</h2>
            <section>
                <form action="/main" method="post" autocomplete="off">
                    <div class="row">
                        <label>ID</label>
                        <input name="n1" type="text" required autofocus="true">
                    </div>
                    <div class="row">
                        <label>Shop</label>
                        <input name="s1" type="text" required>
                    </div>
                    <div class="row">
                        <label>Amount</label>
                        <input name="a1" type="text" required>
                    </div>
                    <div class="row">
                        <label>Date</label>
                        <input name="d1" type="text" required>
                    </div>
                    <input type="submit" value="Wyślij">
                </form>
                <footer>Wszelskie prawa zastrzeżone &copy;</footer>
            </section>
        </div>
        <div class="sidebar">
            <section>
                <article id="info">
                    <h2>Informacje ze świata</h2>
                    <aside>
                        <p>Choć Tesla jest dopiero raczkującym producentem samochodów, to rynek wycenia ją wyżej niż General Motors
                            czy Forda. Tak oto start-up Elona Muska stał się najcenniejszym amerykańskim producentem samochodów.
                            Dla optymistów to symboliczny początek nowej ery w motoryzacji. W miejsce XX-wiecznych aut spalinowych
                            wchodzi producent „ekologicznych” pojazdów napędzanych silnikiem elektrycznym i naszpikowanym elektronicznymi gadżetami.
                            Jest jednak pewien szkopuł. Giganci z Detroit konstruują i zarabiają na produkcji samochodów od ponad stu lat.
                            Tesla się tego dopiero uczy i cały czas jedzie na sporej stracie netto. W 2016 roku firma Elona Muska
                            przy siedmiu miliardach dolarów sprzedaży wygenerowała prawie 675 mln USD straty. To wynik nie do utrzymania na dłuższą metę. </p>
                    </aside>
                </article>
            </section>
        </div>
    </div>
</div>
</body>
</html>

