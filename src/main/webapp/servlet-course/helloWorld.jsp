<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Greeting servlet</title>
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
                <c:when test="${empty greeting}">
                    Введите параметр 'name' в URL. <br/>
                    Пример :
                    dl.gsu.by${context}/servletcourse/helloWorld.jsp?name=Vova
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
        <td><p>Исходный код (GreetServlet.java): </p></td>
        <td><iframe src="${context}/sources/by/gsu/servlets/GreetServlet.java" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/GreetServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (helloWorld.jsp): </p></td>
        <td><iframe src="${context}/sources/servlet-course/helloWorld.jsp" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/servlet-course/helloWorld.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Что такое Servlet?</p>
            <p>Что такое HTTP?</p>
            <p>Что такое HTTP запросы?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Что такое Servlet?</strong>
                <p>
                    <strong>Сервлет</strong> является интерфейсом Java, реализация которого расширяет функциональные возможности сервера.
                    Сервлет взаимодействует с клиентами посредством принципа запрос-ответ.
                    Хотя сервлеты могут обслуживать любые запросы, они обычно используются для расширения веб-серверов.
                    Для таких приложений технология Java Servlet определяет HTTP-специфичные сервлет классы.
                </p>
                <strong>Что такое HTTP?</strong>
                <p>
                    HTTP (англ. HyperText Transfer Protocol — «протокол передачи гипертекста») — протокол прикладного уровня передачи данных (изначально — в виде гипертекстовых документов в формате «HTML», в настоящий момент используется для передачи произвольных данных).
                    Основой HTTP является технология «клиент-сервер», то есть предполагается существование:
                    <ul>
                        <li>Потребителей (клиентов), которые инициируют соединение и посылают запрос;</li>
                        <li>Поставщиков (серверов), которые ожидают соединения для получения запроса,
                            производят необходимые действия и возвращают обратно сообщение с результатом.</li>
                    </ul>
                </p>
                <strong>Что такое HTTP запросы?</strong>
                <p>
                    HTTP определяет множество методов запроса, которые указывают, какое желаемое действие
                    выполнится для данного ресурса. Хотя они по сути "имена существительные", но всё же
                    методы называются HTTP-командами. Каждая реализует свою семантику, но каждая группа
                    команд разделяет общие свойства: так, методы могут быть безопасными, идемпотентными
                    или кэшируемыми.
                    <ul>
                        <li>
                            <h5>GET</h5>
                            Метод GET запрашивает представление ресурса. Запросы с использованием этого метода могут только извлекать данные.
                        </li>
                        <li>
                            <h5>HEAD</h5>
                            HEAD запрашивает ресурс так же, как и метод GET, но без тела ответа.
                        </li>
                        <li>
                            <h5>POST</h5>
                            POST используется для отправки сущностей к определённому ресурсу.
                            Часто вызывает изменение состояния или какие-то побочные эффекты на сервере.
                        </li>
                        <li>
                            <h5>PUT</h5>
                            PUT заменяет все текущие представления ресурса данными запроса.
                        </li>
                        <li>
                            <h5>DELETE</h5>
                            DELETE удаляет указанный ресурс.
                        </li>
                        <li>
                            <h5>CONNECT</h5>
                            CONNECT устанавливает "туннель" к серверу, определённому по ресурсу.
                        </li>
                        <li>
                            <h5>OPTIONS</h5>
                            OPTIONS используется для описания параметров соединения с ресурсом.
                        </li>
                        <li>
                            <h5>TRACE</h5>
                            TRACE выполняет вызов возвращаемого тестового сообщения с ресурса.
                        </li>
                        <li>
                            <h5>PATCH</h5>
                            PATCH используется для частичного изменения ресурса.
                        </li>
                    </ul>
                </p>
            </div>
        </td>
    </tr>
    <tr><td><br></td></tr>
</table>
</body>
</html>
