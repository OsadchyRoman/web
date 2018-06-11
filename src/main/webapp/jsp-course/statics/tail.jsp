<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <p><h2>Исходный код :</h2></p>
    <pre style="width: auto; font-size: 15px;"><code id="jspCode"></code></pre>
    <p>
        <a href="<%=request.getContextPath()%>/sources/jsp-course/<%=request.getParameter("name")%>" class="button teal" target="_blank">Показать весь код страницы в отдельной вкладке</a>
    </p>
    <p><h2>Теория :</h2></p>
    <iframe height="300px" src="http://confluence.newit.gsu.by/pages/viewpage.action?pageId=<%=request.getParameter("pageId")%>"></iframe>
    <p>
        <a href="http://confluence.newit.gsu.by/pages/viewpage.action?pageId=35586145"  class="button teal" target="_blank">head.jsp</a>
        <a href="http://confluence.newit.gsu.by/pages/viewpage.action?pageId=35586154" class="button teal" target="_blank">tail.jsp</a>
    </p>
</div>
<script>
    $( document ).ready(function() {
        codeLoad("<%=request.getContextPath()%>/sources/jsp-course/<%=request.getParameter("name")%>",
            $("#jspCode"));
    });
</script>
