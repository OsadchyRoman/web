<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
    <script type="text/javascript" src="../resources/javascript/task.js"></script>
    <script src="https://unpkg.com/kotlin-playground@1" data-selector=".kotlin-code"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</head>
<body>
<table cols="2">
    <tr>
        <td>
            Результат :        
        </td>
        <td>
            <%=
            //sampleStart
                    "Hello from JSP"
            //sampleEnd
            %>
        </td>
    </tr>
    <tr>
        <td>Исходный код :</td>
        <td>
            <div class="kotlin-code" data-highlight-only folded-button="true">
                <pre>
                    <code class="hljs language-text" id="ajaxDiv">
                        <script type="text/javascript">
                            $.ajax({
                                url: "<%=request.getContextPath()%>/sources/jsp-course/helloFromJsp.jsp",
                                success: function(data){
                                    $("#ajaxDiv").text(data);
                                }
                            });
                        </script>
                    </code>
                </pre>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/helloFromJsp.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Расскажите про неявный объект out.</p>
            <p>Какой синтаксис скриплетов в JSP?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Расскажите про неявный объект out.</strong>
                <p>Объект, который пишет в выходной поток. Область видимости - страница. Основные методы : clear, clearBuffer, flush, getBufferSize, getRemaining.
                    Необходимо помнить, размер буфера можно изменять и даже отключить буферизацию, изменяя значение атрибута buffer директивы page.
                    Также необходимо обратить внимание, что out используется практически исключительно скриплетами, поскольку выражения JSP автоматически помещаются в поток вывода,
                    что избавляет от необходимости явного обращения к out.</p>
                <strong>Какиой синтаксис скриплетов в JSP?</strong>
                <p>
                    &lt;% текст скриптлета %&gt;
                </p>
            </div>
            <a href="" onclick="showhide('hint2'); return false;">Теория</a><br><br>
            <div id="hint2" style="display: none;">
                <strong>Как комментировать код в JSP</strong>
                <p>
                    JSP предоставляет две возможности закомментировать код:<br>

                    HTML комментарии — &lt;-- HTML Comment --&gt;. Такие комментарии будут видны клиенту при просмотре кода страницы.<br>
                    JSP комментарии — &lt;%-- JSP Comment --%&gt;. Такие комментарии создаются в созданном сервлете и не посылаются клиенту. Для любых комментариев по коду или отладочной информации необходимо использовать этот тип комментариев.
                </p>
            </div>
        </td>
    </tr>
</table>
</body>
</html>
