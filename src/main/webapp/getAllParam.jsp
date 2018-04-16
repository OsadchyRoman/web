<%@ page import="java.util.Map" %>
<%@ page import="java.util.Arrays" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Map map = request.getParameterMap();
    StringBuilder result = new StringBuilder("");
    if (!map.isEmpty()) {
        for (Object key: map.keySet()) {
            String[] value= (String[]) map.get(key);
            result.append(key).append("=").append(Arrays.toString(value)).append(" ");
        }
    }
%>
<html>
<head>

<link rel="stylesheet" type="text/css" href="resources/css/style.css">
</head>
<body>
<table cols="2">
    <tr>
        <td>Результат работы :</td>
        <td>
            <%=(result.toString().isEmpty()) ? "Введите параметры в URL" : result%>
        </td>
    </tr>
    <tr>
    <td>Исходный код :</td>
    <td>
        <iframe src="sources/getAllParam.jsp" frameborder="1" width="1000" height="400"></iframe>
    </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="sources/getAllParam.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Что такое Map?</p>
            <p>Какая директива импортирует java класс в JSP?</p>
            <p>Какой тип результата выражения в JSP?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Что такое Map?</strong>
                <p>В контейнерах Map (отображение) хранятся два объекта: ключ и связанное с ним значение. Иногда используют термин "ассоциативный массив".
                    Map позволяет искать объекты по ключу. Объект, ассоциированный с ключом, называется значением. И ключи, и значения являются объектами.
                    Ключи могут быть уникальными, а значения могут дублироваться. Некоторые отображения допускают пустые ключи и пустые значения.</p>
                <strong>Какая директива импортирует java класс в JSP?</strong>
                <p>
                    &lt;%@ page import=""%&gt;
                </p>
                <strong>Какой тип результата выражения в JSP?</strong>
                <p>Результат выражения в JSP имеет обязательный тип String.</p>
            </div>
            <a href="" onclick="showhide('hint2'); return false;">Теория</a><br><br>
            <div id="hint2" style="display: none;">
                <strong>Неявный объект out</strong>
                <p>
                    Объект, который пишет в выходной поток. Область видимости - страница. Основные методы : clear, clearBuffer, flush, getBufferSize, getRemaining.
                    Необходимо помнить, размер буфера можно изменять и даже отключить буферизацию, изменяя значение атрибута buffer директивы page.
                    Также необходимо обратить внимание, что out используется практически исключительно скриплетами, поскольку выражения JSP автоматически помещаются в поток вывода,
                    что избавляет от необходимости явного обращения к out.
                </p>
                <strong>Скриптлеты JSP</strong>
                <p>
                    Скриптлеты включают различные фрагменты кода, написанного на языке скрипта, определенного в директиве language.
                    Фрагменты кода должны соответствовать синтаксическим конструкциям языка скриптлетов, т.е., как правило, синтаксису языка Java. Скриптлеты имеют следующий синтаксис:
                </p>
                <p>&lt;% текст скриптлета %&gt;</p>
                <strong>Объявления JSP</strong>
                <p>
                    Declarations (Declarations) предназначены для определения переменных и методов на языке скриптов, которые в дальнейшем используются на странице JSP. Синтаксис declarations имеет следующий вид :
                </p>
                <p>
                    &lt;%! код Java %&gt;
                </p>
                <p>Объявления располагаются в блоке объявлений, а вызываются в блоке выражений страницы JSP. Код в блоке объявлений обычно пишется на языке Java,
                    однако серверы приложений могут использовать синтаксис и других скриптов. Объявления иногда используются для того, чтобы добавить дополнительную функциональность при работе с динамическими данными, получаемыми из свойств компонентов JavaBeans.
                </p>
            </div>
        </td>
    </tr>
</table>
</body>
</html>