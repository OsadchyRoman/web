<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Choose color</title>
    <script type="text/javascript" src="../resources/javascript/task.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <script src="https://unpkg.com/kotlin-playground@1" data-selector=".kotlin-code"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</head>
<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
<table cols="2">
    <tr>
        <td><p>Результат работы:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty greeting}">
                    <span style="color: red;"> Введите свое имя и цвет на <strong> английском языке </strong>, пожалуйста! </span>
                </c:when>
                <c:otherwise>
                    <strong style="color: ${color}"> ${greeting} </strong>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Форма для отправки:</p></td>
        <td>
            <p>
            <%//sampleStart %>
            <form method="post" action="${context}/servletcourse/chooseColor.jsp"
                  style="padding: 10px; border: 1px solid black; width: 175px;">
                <label for="color">Введите любой цвет:</label> <br/>
                <input id="color" name="color"/> <br/>

                <label for="name">Введите свое имя:</label> <br/>
                <input id="name" name="name"/> <br/>
                <br/>
                <input type="submit" value="Отправить">
            </form>
            <%//sampleEnd %>
        </td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет выводить ваше имя в указанном цвете. На вход сервлет будет принимать форму,
            с заполненными полями color, name.
            И отвечать приветствием на переданную форму.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (ChooseColorServlet.java): </p></td>
        <td>
            <div class="kotlin-code" data-highlight-only folded-button="true">
                <pre>
                    <code class="hljs language-text" id="javaCode">
                    </code>
                </pre>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/ChooseColorServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (chooseColor.jsp): </p></td>
        <td>
            <div class="kotlin-code" data-highlight-only folded-button="true">
                <pre>
                    <code class="hljs language-text" id="jspCode">
                    </code>
                </pre>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/servlet-course/chooseColor.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
<script>
    $( document ).ready(function() {
        codeLoad("${context}/sources/by/gsu/servlets/ChooseColorServlet.java",
            $("#javaCode"));
        codeLoad("${context}/sources/servlet-course/chooseColor.jsp",
            $("#jspCode"));
    });
</script>
</body>
</html>
