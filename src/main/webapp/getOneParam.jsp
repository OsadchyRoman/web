<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
      <td>Результат работы :</td>
      <td>
        <%=request.getParameter("s")!=null?"s="+request.getParameter("s"):"Введите параметр s в URL. Пример : dl.gsu.by/examples/getOneParam.jsp?s=5"%>
      </td>
    </tr>
    <tr>
      <td>Исходный код :</td>
      <td><pre>
&lt;%@ page contentType="text/html;charset=UTF-8" language="java"%&gt;
&lt;html&gt
  &lt;head&gt;
  &lt;/head&gt;
  &lt;body&gt;
    &lt;%=request.getParameter("s")!=null?"s="+request.getParameter("s"):"Введите параметр s в URL. Пример : dl.gsu.by/examples/getOneParam.jsp?s=5"%&gt;
  &lt;/body&gt;
&lt;/html&gt;</pre></td>
    </tr>
  </table>
  </body>
</html>
