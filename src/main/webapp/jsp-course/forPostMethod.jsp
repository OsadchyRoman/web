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
            <ul>
                <li><p><b>First Name:</b>
                    <%= request.getParameter("first_name")%>
                </p></li>
                <li><p><b>Last  Name:</b>
                    <%= request.getParameter("last_name")%>
                </p></li>
            </ul>
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
                           url: "<%=request.getContextPath()%>/sources/jsp-course/forPostMethod.jsp",
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
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/forPostMethod.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
</body>
</html>
