<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
<table cols="2">
    <tr>
        <td>Результат работы:</td>
        <td>
            <%
                Date dateNow=new Date();
                SimpleDateFormat formatForDateNow=new SimpleDateFormat("'Текущая дата 'yyyy.MM.dd 'и время' hh:mm:ss ");
                out.println(formatForDateNow.format(dateNow));
            %>
        </td>
    </tr>
    <tr>
        <td>Исходный код :</td>
        <td>
            <iframe src="sources/getDate.jsp" frameborder="1" width="1000" height="400"></iframe>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="sources/getDate.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Как комментировать код в JSP?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Как комментировать код в JSP?</strong>
                <p>
                    HTML комментарии — &lt;-- HTML Comment --&gt;. Такие комментарии будут видны клиенту при просмотре кода страницы.<br>
                    JSP комментарии — &lt;%-- JSP Comment --%&gt;. Такие комментарии создаются в созданном сервлете и не посылаются клиенту. Для любых комментариев по коду или отладочной информации необходимо использовать этот тип комментариев.
                </p>
            </div>
        </td>
    </tr>
</table>
</body>
</html>