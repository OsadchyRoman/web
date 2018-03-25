<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %>
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
           <td><a href="" onclick="showhide('hint1'); return false;">Ответы на контрольные вопросы</a> <br><br>
               <div id="hint1" style="display: none;">
                   <strong>Что такое URL?</strong>
                   URL (ЮРЛ) - это абревиатура, которая скрывает термин Universal Resource Locator. В переводе - универсальный указатель местоположения. По нему выходят на сервер, который служит хранилищем для нужного ресурса
               </div></td>
       </tr>
   </table>
</body>
</html>