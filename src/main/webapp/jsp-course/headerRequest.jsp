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
                <h2>HTTP Header Request Example</h2>
                <table width = "100%" border = "1" align = "center">
                    <tr bgcolor = "#949494">
                        <th>Header Name</th>
                        <th>Header Value(s)</th>
                    </tr>
                    <%
                        //sampleStart
                        Enumeration headerNames = request.getHeaderNames();
                        while(headerNames.hasMoreElements()) {
                            String paramName = (String)headerNames.nextElement();
                            out.print("<tr><td>" + paramName + "</td>\n");
                            String paramValue = request.getHeader(paramName);
                            out.println("<td> " + paramValue + "</td></tr>\n");
                        }
                        //sampleEnd
                    %>
                </table>
            </td>
        </tr>
        <tr>
            <td>Исходный код :</td>
            <td>
                <div class="kotlin-code" data-highlight-only>
        <pre>
          <code class="hljs language-text" id="ajaxDiv" >
            <script type="text/javascript">
                       $.ajax({
                           url: "<%=request.getContextPath()%>/sources/jsp-course/headerRequest.jsp",
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
            <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/headerRequest.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
        </tr>
    </table>

</body>
</html>
