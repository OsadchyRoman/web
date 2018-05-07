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
            <h2>Using JavaBeans in JSP</h2>
            <jsp:useBean id = "test" class = "by.gsu.classes.jspCourse.TestBean" />
            <jsp:setProperty name = "test"  property = "message" value = "Hello JSP..." />

            <p>Got message....</p>
            <jsp:getProperty name = "test" property = "message" />
            <%//sampleEnd%>
        </td>
    </tr>
    <tr>
        <td>actionUseBean.jsp :</td>
        <td>
            <div class="kotlin-code" data-highlight-only folded-button="true">
        <pre>
          <code class="hljs language-text" id="ajaxDiv">
            <script type="text/javascript">
                       $.ajax({
                           url: "<%=request.getContextPath()%>/sources/jsp-course/actionUseBean.jsp",
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
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/jsp-course/actionForward.jsp"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
    <tr>
    <td>TestBean.java :</td>
    <td>
        <div class="kotlin-code"  data-highlight-only>
        <pre >
          <code class="hljs language-text"  id="ajaxDiv2">
            <script type="text/javascript">
                       $.ajax({
                           url: "<%=request.getContextPath()%>/sources/by/gsu/classes/jspCourse/TestBean.java",
                           success: function(data){
                               $("#ajaxDiv2").text(data);
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
        <td><button class="button-source"><a href="<%=request.getContextPath()%>/sources/by/gsu/classes/jspCourse/TestBean.java"  target="_blank">Показать в отдельной вкладке</a></button></td>
    </tr>
</table>
</body>
</html>