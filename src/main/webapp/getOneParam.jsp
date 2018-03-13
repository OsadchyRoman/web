<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String string = request.getQueryString();
    String result = " ";
    if(string!=null) {
        result = string.replaceAll("&", " ");
    }
%>
<html>
<head>
    <style>
        pre {border: dashed 1px #634F36; background: #fffff5; font-family: "Courier New", Courier, monospace; padding: 7px; font-size: 80%; margin: 0 0 1em; width: 100%;}
        td {vertical-align: top; text-align: left;}
    </style>
</head>
<body>
   <table cols="2">
       <tr>
           <td>Результат :</td>
           <td>
               <%=(" ".equals(result))?Введите параметры в URL":result%>
           </td>
       </tr>

</body>
</html>