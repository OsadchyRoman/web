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
            <%=
            //sampleStart
                    request.getServerPort()
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
                    </code>
                </pre>
            </div>
        </td>
    </tr>
    <tr>
        <td></td>
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/getPort.jsp"  target="_blank">Показать в отдельной вкладке</a></button>
        </td>
    </tr>
</table>
 <script>
    $( document ).ready(function() {
        codeLoad("<%=request.getContextPath()%>/sources/jsp-course/getPort.jsp",
        $("#ajaxDiv"));
    });   
</script> 
</body>
</html>
