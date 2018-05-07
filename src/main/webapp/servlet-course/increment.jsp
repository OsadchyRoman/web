<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Increment</title>
    <script type="text/javascript" src="../resources/javascript/task.js"></script>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<c:set var="context" value="${pageContext.request.contextPath}" />
<table cols="2">
    <tr>
        <td><p>Результат работы:</p></td>
        <td>
            <form method="post">
                ${result} <br/> <br/>
                <input type='submit' name='Submit' value='Submit'>
            </form>
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
            <iframe src="${context}/sources/by/gsu/servlets/IncrementServlet.java" frameborder="1" width="1000" height="400"></iframe>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/by/gsu/servlets/IncrementServlet.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Исходный код (increment.jsp): </p></td>
        <td><iframe src="${context}/sources/servlet-course/increment.jsp" frameborder="1" width="1000" height="400"></iframe></td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="${context}/sources/servlet-course/increment.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr><td><br></td></tr>
    <tr><td><br></td></tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Чем отличается SENDREDIRECT() от FORWARD()?</p>
            <p>Зачем нужны слушатели в сервлетах?</p>
            <p>Что такое дескриптор развертывания?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Чем отличается SENDREDIRECT() от FORWARD()?</strong>
                <p>
                    Для вызова JSP по относительному пути применяется метод forward(), для обращения к JSP по абсолютному пути используется метод
                    sendRedirect(). Отличие этих методов состоит в том, что методом forward() передается уже существующий объект запроса request, а
                    при вызове метода sendRedirect() формируется новый запрос. Информацию в последнем случае следует передавать с другими объектами.
                    К тому же метод forward() срабатывает быстрее.
                </p>

                <strong>Зачем нужны слушатели в сервлетах?</strong>
                <p>
                    Слушатели контекста и сессий - это классы, которые могут следить за тем, когда контекст или сессия были инициализированны, или
                    отслеживать время, когда они должны быть уничтожены, и когда атрибуты были добавленны или удалены из контекста или сесси. Servlet 2.4
                    расширяет модель слушателей запроса, позволяя отслеживать, как запрос создается и уничтожается, и, как атрибуты добавляются и удаляются
                    из сервлета. В Servlet 2.4 добавлены следующие классы:
                    1) ServletRequestListener
                    2) ServletRequestEvent
                    3) ServletRequestAttributeListener
                    4) ServletRequestAttributeEvent
                </p>

                <strong>Что такое дескриптор развертывания?</strong>
                <p>
                    Дискриптор развертывания - это конфигурационный файл артефакта, который будет развернут в контейнере сервлетов. В спецификации
                    Java Platform, Enterprise Edition дискриптор развертывания описывает то, как компонент, модуль или приложение (такое, как веб - приложение
                    или приложение предприятия) должно быть развернуто. Этот конфигурационный файл указывает параметры развертывания для модуля или приложения
                    с определенными настройками, параметры безопасности и описывает конкретные требования к конфигурации. Для синтаксиса файлов дискриптора развертывания
                    используется язык XML.
                </p>
            </div>
        </td>
    </tr>
</table>
</body>
</html>
