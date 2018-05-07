<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Servlet Course</title>
    <link rel="stylesheet" type="text/css" href="../resources/css/style.css">
</head>
<body>
<div align="center">
<table width="800" style="padding-left: 80px">
    <tr>
        <!-- Servlet course -->
        <td>
            <!-- Examples -->
            <h3>HTTP</h3>
            <a href="<%=request.getContextPath()%>/servletcourse/helloWorld.jsp">Servlet для приветствия</a> <br/>
            <a href="<%=request.getContextPath()%>/servletcourse/allParameters.jsp">Подсчет длины параметров из URL</a> <br/>

            <h3>Работа с формой</h3>
            <a href="<%=request.getContextPath()%>/servletcourse/increment.jsp">Кликер</a> <br/>
            <a href="<%=request.getContextPath()%>/servlet-course/sendForm.jsp">Отправка формы</a> <br/>
            <a href="<%=request.getContextPath()%>/servlet-course/chooseColor.jsp">Выбираем цвет приветствия</a> <br/>
            <a href="<%=request.getContextPath()%>/servlet-course/stringWork.jsp">Изучаем элементы - манипуляции со строкой</a> <br/>
        </td>
        <td>
            <!-- Links -->
            <h3>Полезные ссылки по Servlet</h3>
            <a href="http://java-course.ru/student/book1/servlet/" target="_blank">Что такое Servlet?</a> <br/>
            <a href="https://ru.wikipedia.org/wiki/Apache_Tomcat" target="_blank">Apache Tomcat</a> <br/>
            <a href="https://www.tutorialspoint.com/jsp/jsp_standard_tag_library.htm" target="_blank">JSP - Standard Tag Library (JSTL)</a> <br/>

            <!-- Environment -->
            <h3>Среда разработки</h3>
            <a target="_blank" href="http://blog.harrix.org/article/6880">Простейшее web-приложение на Java (Tomcat)</a> <br/>
        </td>
    </tr>
</table>
</div>
</body>
</html>
