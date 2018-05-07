<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All parameters</title>
    <script type="text/javascript" src="../resources/javascript/task.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
<table cols="2">
    <tr>
        <td><p>Результат работы:</p></td>
        <td><p>
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
            <iframe src="${context}/sources/by/gsu/servlets/UrlParametersServlet.java" frameborder="1" width="1000" height="400"></iframe>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/UrlParametersServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (allParameters.jsp): </p></td>
        <td><iframe src="${context}/sources/servlet-course/allParameters.jsp" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/servlet-course/allParameters.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Что такое контейнер сервлетов?</p>
            <p>Что такое жизненный цикл сервлета?</p>
            <p>Каковы задачии, функциональность контейнера сервлетов? </p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Что такое контейнер сервлетов?</strong>
                <p>
                    Контейнер сервлетов - программа, управляющая жизненным циклом сервлетов.
                </p>

                <strong>Что такое жизненный цикл сервлета?</strong>
                <p>
                    Жизненный цикл сервлета : им управляет контейнер сервлетов, при первом обращении к сервлету происходит его загрузка
                    в память и вызывается метод init(). На протяжении работы приложения происходят вызовы метода service() для обработки запросов
                    клиента. По завершению работы приложения вызывается метод destroy() и сервлет выгружается из памяти.
                </p>

                <strong>Каковы задачии, функциональность контейнера сервлетов?</strong>
                <p>
                    Контейнер сервлетов может работать как полноценный самостоятельный веб - сервер, быть поставщиком страниц для другого веб - сервера,
                    например Apache, или интегрироваться в Java EE сервер приложений. Обеспечивает обмен данными между сервлетом и клиентами, берет на себя
                    выполнение таких функций, как создание программной среды для функционирующего сервлета, идентификацию и авторизацию клиентов, организацию
                    сессии для каждого из них.
                </p>
            </div>
        </td>
    </tr>
    <tr><td><br></td></tr>
</table>
</body>
</html>
