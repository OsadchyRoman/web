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
        <td>Результат работы:</td>
        <td>
            //sampleStart
            <jsp:include page = "dateForInclude.jsp" flush = "true" />
            //sampleEnd
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
                                url: "<%=request.getContextPath()%>/sources/jsp-course/actionInclude.jsp",
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
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/actionInclude.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr>
        <td>Контрольные вопросы:</td>
        <td class="sizeTd">
            <p>Что делает jsp:include?</p>
            <a href="" onclick="showhide('hint1'); return false;">Ответы</a><br><br>
            <div id="hint1" style="display: none;">
                <strong>Что делает jsp:include?</strong>
                <p>
                    Добавляет контент со значением атрибута страницы к текущей странице во время запроса. Предназначен больше для динамического контента, поступающего от JSP.
                </p>
            </div>
            <a href="" onclick="showhide('hint2'); return false;">Теория</a><br><br>
            <div id="hint2" style="display: none;">
                <strong>Действие jsp:include</strong>
                <p>
                    Действие jsp:include позволяет подключать статические и динамические ресурсы в контекст текущей страницы JSP. Так, например, выходной поток сервлета может быть включен в содержимое страницы JSP. Тогда при вызове страницы JSP выходной поток сервлета будет встроен в выходной поток JSP. Ресурс определяется по его относительному URL-адресу, который интерпретируется в контекст Web-сервера.
                    В отличие от директивы include, которая вставляет файл на этапе трансляции страницы JSP, действие jsp:include вставляет файл при запросе страницы. Это приводит к некоторой потере эффективности и исключает возможность наличия во вставляемом файле кода JSP, но дает существенное преимущество в гибкости. Если рассмотреть в качестве примера JSP-страницу, которая вставляет четыре различных отрывка в Web страницу с новостями сайта. Каждый раз когда меняются заголовки автору достаточно изменить содержимое четырех файлов, тогда как главная JSP страница остается неизменной.
                </p>
                <strong>Тег jsp:include имеет атрибуты:</strong>
                <p>
                    page : Атрибут page определяется относительно текущей страницы JSP. Включаемая страница имеет доступ только к объекту JspWriter и не может устанавливать заголовки.
                </p>
                <p>
                    flush : Необязательный атрибут flush управляет переполнением. Если этот атрибут имеет значение true и выходной поток страницы JSP буферизуется, то буфер освобождается при переполнении, в противном случае - не освобождается. По умолчанию значение атрибута flush равно false
                </p>
            </div>
        </td>
    </tr>
</table>
</body>
</html>