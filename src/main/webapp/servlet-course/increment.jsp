<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Increment</title>
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
        <td>
            <%//sampleStart %>
            <form method="post">
                ${result} <br/> <br/>
                <input type='submit' name='Submit' value='Submit'>
            </form>
            <%//sampleEnd %>
        </td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Написать сервлет, который выдает HTML-страницу с нарисованной цифрой 1 и кнопкой "Submit".
            После нажатия кнопки "Submit" сервлет должен выдать HTML-страницу с цифрой 2 и кнопкой "Submit".
            Потом с цифрой 3 и так далее.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (IncrementServlet.java): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/IncrementServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (increment.jsp): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/servlet-course/increment.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
    <script>
        $( document ).ready(function() {
            codeLoad("${context}/sources/by/gsu/servlets/IncrementServlet.java",
                $("#javaCode"));
            codeLoad("${context}/sources/servlet-course/increment.jsp",
                $("#jspCode"));
        });
    </script>
</body>
</html>
