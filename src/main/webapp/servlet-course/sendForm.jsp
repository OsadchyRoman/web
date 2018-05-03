<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Send form</title>
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
                   <span style="color: red;"> Заполните и отправте форму ниже, пожалуйста! </span>
                </c:when>
                <c:otherwise>
                    <span style="color: green;"> <c:out value = "${greeting}"/> </span>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Форма для отправки:</p></td>
        <td>
            <p>
            <form method="post" action="${context}/servletcourse/sendForm.jsp"
                  style="padding: 10px; border: 1px solid black; width: 175px;">
                <label for="firstName">First Name:</label> <br/>
                <input id="firstName" name="firstName"/> <br/>

                <label for="lastName">Last Name:</label> <br/>
                <input id="lastName" name="lastName"/> <br/>
                <br/>
                <input type="submit" value="Send">
            </form>
            </p>
        </td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет приветствовать пользователя. На вход сервлет будет принимать форму,
            с заполненными полями name, age.
            И отвечать приветствием на переданную форму.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (PersonInfoServlet.java): </p></td>
        <td><iframe src="${context}/sources/by/gsu/servlets/PersonInfoServlet.java" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/PersonInfoServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (sendForm.jsp): </p></td>
        <td><iframe src="${context}/sources/servlet-course/sendForm.jsp" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/servlet-course/sendForm.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr><td><br></td></tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Что представляет собой объект SERVLETCONFIG?</p>
            <p>Что представляет собой объект SERVLETCONTEXT?</p>
            <p>В чем различия SERVLETCONFIG и SERVLETCONTEXT?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Что представляет собой объект SERVLETCONFIG?</strong>
                <p>
                    Интерфейс java.servlet.ServletConfig используется для передачи конфигурационной информации сервлету. Каждый сервлет имеет свой
                    собственный объект ServletConfig, за создание экземпляра которого ответственен контейнер сервлетов. Для установки параметров
                    конфигурации используется init параметры в web.xml (или аннотации WebInitParam). Для получения объекта ServletConfig данного
                    сервлета используется метод getServletConfig().
                </p>

                <strong>Что представляет собой объект SERVLETCONTEXT?</strong>
                <p>
                    Интерфейс javax.servlet.ServletContext предоставляет доступ к параметрам веб приложения сервлету.
                    Объект ServletContext является уникальным и доступен всем сервлетам веб приложения. Мы можем использовать объект ServletContext, когда нам необходимо предоставить доступ одному или нескольким сервлетам к инициализированным параметрам веб приложения.
                    Для этого используется элемент <context-param> в web.xml.
                    Объект ServletContext можно получить с помощью метода getServletContext() у интерфейса ServletConfig.

                </p>

                <strong>В чем различия SERVLETCONFIG и SERVLETCONTEXT?</strong>
                <p>
                    ServletConfig является уникальным объектом для каждого сервлета, в то время как ServletContext уникальный для всего приложения.
                    ServletConfig используется для предоставления параметров инициализации сервлету, а ServletContext для предоставления параметров инициализации приложения для всех сервлетов.
                    У нас нет возможности устанавливать атрибуты в объекте ServletConfig, в то время как можно установить атрибуты в объекте ServletContext, которые будут доступны другим сервлетам.
                </p>
            </div>
        </td>
    </tr>
</table>
</body>
</html>
