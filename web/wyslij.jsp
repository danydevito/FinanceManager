<%--
  Created by IntelliJ IDEA.
  User: daniel
  Date: 2017-03-28
  Time: 21:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Twój domowy budżet</title>
</head>
<body>
<H1 align="center">Insert your expenses</H1>
<form action="/main" method="post">
    ID :
    <input type="text" name="n1"><br>
    Shop :
    <input type="text" name="s1"><br>
    Amount :
    <input type="text" name="a1"><br>
    Date :
    <input type="text" name="d1"><br>
    <%--Amount 2:--%>
    <%--<input type="text" name="a2"><br>--%>
    <%--Shop 3:--%>
    <%--<input type="text" name="s3"><br>--%>
    <%--Amount 3:--%>
    <%--<input type="text" name="a3"><br>--%>
    <%--Shop 4:--%>
    <%--<input type="text" name="s4"><br>--%>
    <%--Amount 4:--%>
    <%--<input type="text" name="a4"><br>--%>
    <input type="submit" value="Wyslij">
</form>
</body>
</html>
