<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Greeting servlet</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<table cols="2">
    <tr>
        <td><p>Ответ сервлета:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty greeting}">
                    Введите параметр 'name' в URL. <br/>
                    Пример :
                    <c:set var = "server" value="${pageContext.request.serverName}" />
                    <c:set var = "port" value="${pageContext.request.serverPort}" />
                    ${server}:${port}/servletcourse/helloWorld.jsp?name=Vova
                </c:when>
                <c:otherwise>
                    <c:out value = "${greeting}"/>
                </c:otherwise>
            </c:choose>

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
        <td><p>GreetServlet.java: </p></td>
        <td><iframe src="/sources/by/gsu/servlets/GreetServlet.java" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>helloWorld.jsp: </p></td>
        <td><iframe src="/sources/servlet-course/helloWorld.jsp" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr><td><br></td></tr>
</table>
</body>
</html>
