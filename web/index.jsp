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
                    <li class="send"><a href="wyslij.jsp"><span>Dodaj zakup</span></a> </li>
                    <li class="list"><a href="list.jsp"><span>Pokaż listę wydatków</span></a> </li>
                </ul>
            </nav>
        </header>

        <div class="content">
            <div class="main-content">
        <section>
            <article>
                <figure>
                    <img src="cash.jpg" alt="obrazek z pieniądzami..."/><br/>
                </figure>
            </article>

            <article id="instr">
                <aside>
                    <p>     Wprowadzaj na bieżąco swoje wydatki wchodząc w opcję <i>Dodaj zakup</i>. Staraj się robić to codziennie lub co najmniej
                    kilka razy w tygodniu. Dzięki temu łatwiej będzie Ci spisać wszystkie rozchody, nawet te, które nie widnieją na zebranych
                    paragonach. Możesz w każdej chwili przeglądać listę wprowadzonych wydatków klikając <i>Pokaż listę wydatków</i>.</p>
                </aside>
            </article>



            <article id="tips">
                <aside>
                    <p>
                        Umiejętność zarządzania własnymi finansami pozwala by to Twoje pieniądze pracowały na życie, którego pragniesz.
                        Trzeba bardzo uważać aby nie wpaść w pułapkę, w której to pieniądze kontrolują Ciebie.
                        Niezależnie od tego ile zarabiasz, zawsze masz ograniczone środki do rozdysponowania. Od Ciebie zależy
                        na co je przeznaczysz. Jednym z fundamentalnych założeń prowadzenia swojego budżetu jest osiągnięcie sytuacji
                        gdy regularnie odkładasz część środków na jakieś określone cele w przyszłości.
                        Niech powyższa strona pomoże Ci w kontrolowaniu wydatków i przyczyni się do poprawy jakości Twojego życia. Powodzenia!
                    </p>
                </aside>

                <footer>Wszelskie prawa zastrzeżone &copy;</footer>
            </article>
        </section>
            </div>
            <div class="sidebar">
                <section>
                    <article id="info">
                        <h2>Informacje z kraju</h2>
                        <aside>
                            <p>Ubezpieczeniowy Fundusz Gwarancyjny szacuje, że obecnie bez ważnego OC w Polsce
                            znajduje się ponad 100 tys. pojazdów. Niewątpliwie, brak tej polisy może nas dużo kosztować.
                            Oprócz kary, w momencie wypadku spowodowanego przez samochód nie objęty ochroną ubezpieczeniową,
                            zapłacimy za wszystkie koszty związane z tym zdarzeniem.</p>
                        </aside>
                    </article>
                </section>
            </div>
        </div>
    </div>
</body>
</html>
