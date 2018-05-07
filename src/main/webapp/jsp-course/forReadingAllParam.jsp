<%@ page import="java.util.Enumeration" %>
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
        <td>Результат работы :</td>
        <td>
            <%//sampleStart%>
            <table width = "100%" border = "1" align = "center">
                <tr bgcolor = "#949494">
                    <th>Param Name</th>
                    <th>Param Value(s)</th>
                </tr>
                <%
                    Enumeration paramNames = request.getParameterNames();
                    while(paramNames.hasMoreElements()) {
                        String paramName = (String)paramNames.nextElement();
                        out.print("<tr><td>" + paramName + "</td>\n");
                        String paramValue = request.getParameter(paramName);
                        out.println("<td> " + paramValue + "</td></tr>\n");
                    }
                %>
            </table>
            <%//sampleEnd%>
        </td>
    </tr>
    <tr>
        <td>Исходный код:</td>
        <td>
            <div class="kotlin-code" data-highlight-only>
        <pre>
          <code class="hljs language-text" id="ajaxDiv" >
            <script type="text/javascript">
                       $.ajax({
                           url: "<%=request.getContextPath()%>/sources/jsp-course/forReadingAllParam.jsp",
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
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/forReadingAllParam.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
</body>
</html>
