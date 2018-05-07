<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All parameters</title>
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
                <c:when test="${empty result}">
                    Введите параметры в URL. <br/>
                    <c:set var = "server" value="${pageContext.request.serverName}" />
                    <c:set var = "port" value="${pageContext.request.serverPort}" />
                    Пример : dl.gsu.by${context}/servletcourse/allParameters.jsp?i=Roman&mother=Anna&father=Misha
                </c:when>
                <c:otherwise>
                    <ul>
                        <c:forEach var="item" items="${result}">
                            <li>
                                ${item.key} - ${item.value}
                            </li>
                        </c:forEach>
                    </ul>
                </c:otherwise>
            </c:choose>
            <%//sampleEnd %>
        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет подсчитывать длину каждого параметра в URL. На вход сервлет
            будет принимать параметры, и отвечать списком подсчитанных длин.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (UrlParametersServlet.java): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/UrlParametersServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (allParameters.jsp): </p></td>
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
        <td><button class="button-source"><a href="${context}/sources/servlet-course/allParameters.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
    <script>
        $( document ).ready(function() {
            codeLoad("${context}/sources/by/gsu/servlets/UrlParametersServlet.java",
                $("#javaCode"));
            codeLoad("${context}/sources/servlet-course/allParameters.jsp",
                $("#jspCode"));
        });
    </script>
</body>
</html>
