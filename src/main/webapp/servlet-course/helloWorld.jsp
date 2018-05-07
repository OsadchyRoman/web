<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Greeting servlet</title>
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
            <%//sampleStart %>
            <c:choose>
                <c:when test="${empty greeting}">
                    Введите параметр 'name' в URL. <br/>
                    Пример :
                    dl.gsu.by${context}/servletcourse/helloWorld.jsp?name=Vova
                </c:when>
                <c:otherwise>
                    <c:out value = "${greeting}"/>
                </c:otherwise>
            </c:choose>
            <%//sampleEnd %>
        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет приветствовать пользователя. На вход сервлет будет принимать параметр 'name'.
            И отвечать приветствием на переданный параметр.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (GreetServlet.java): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/GreetServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (helloWorld.jsp): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/servlet-course/helloWorld.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
    <script>
        $( document ).ready(function() {
            codeLoad("${context}/sources/by/gsu/servlets/GreetServlet.java",
                $("#javaCode"));
            codeLoad("${context}/sources/servlet-course/helloWorld.jsp",
                $("#jspCode"));
        });
    </script>
</body>
</html>
