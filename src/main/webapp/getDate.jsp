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
</table>
</body>
</html>