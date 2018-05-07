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
                    <span style="color: red;"> Выберите действия, которые вы ходите произвести над строкой (цвет на <strong> английском языке </strong>)! </span>
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
            <form method="post" action="${context}/servletcourse/stringWork.jsp"
                  style="padding: 10px; border: 1px solid black; width: 175px;">
                <label for="string">Выберите строку:</label> <br/>
                <select id="string" name="string">
                    <option value="Hello!">Hello!</option>
                    <option value="Aloha!">Aloha!</option>
                    <option value="Hallo!">Hallo!</option>
                    <option value="Chao!">Chao!</option>
                </select> <br/>

                <p>Действие над словом:</p>
                <div>
                    <input type="checkbox" id="direction"
                           name="direction" value="fromEnd">
                    <label for="direction">Перевернуть</label>
                </div> <br/>

                <p>Выбрать регистр:</p>
                <div>
                    <input type="radio" id="case1"
                           name="case" value="lower">
                    <label for="case1">Нижний</label>

                    <input type="radio" id="case2"
                           name="case" value="upper">
                    <label for="case2">Верхний</label>
                </div> <br/>

                <label for="color">Введите любой цвет:</label> <br/>
                <input id="color" name="color"/> <br/>

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
            Описан сервлет, который будет производить различные манипуляции с выбранной строкой.
            На вход сервлет будет принимать форму, с заполненными полями string, direction, case, color.
            И отвечать приветствием на переданную форму.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (StringWorkerServlet.java): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/StringWorkerServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (stringWork.jsp): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/servlet-course/stringWork.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
<script>
    $( document ).ready(function() {
        codeLoad("${context}/sources/by/gsu/servlets/StringWorkerServlet.java",
            $("#javaCode"));
        codeLoad("${context}/sources/servlet-course/stringWork.jsp",
            $("#jspCode"));
    });
</script>
</body>
</html>
