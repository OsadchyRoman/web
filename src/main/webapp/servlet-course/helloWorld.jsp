<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Greeting servlet</title>
    <style>
        td {vertical-align: top; text-align: left;}
        pre {border: dashed 1px #634F36; background: #fffff5; font-family: "Courier New", Courier, monospace; padding: 7px; font-size: 80%; margin: 0 0 1em; width: 650px;}
    </style>
</head>
<body>
<table cols="2">
    <tr>
        <td><p>Ответ сервлета:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty greeting}">
                    Введите параметр 'name' в URL. <br/>
                    Пример :
                    <c:set var = "server" value="${pageContext.request.serverName}" />
                    <c:set var = "port" value="${pageContext.request.serverPort}" />
                    ${server}:${port}/servletcourse/helloWorld.jsp?name=Vova
                </c:when>
                <c:otherwise>
                    <c:out value = "${greeting}"/>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет приветствовать пользователя. На вход сервлет будет принимать параметр 'name'.
            И отвечать приветствием на переданный параметр.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>GreetServlet.java: </p></td>
        <td><pre>
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GreetServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String greeting = null;
        if (name != null) {
            greeting = "Hello world, " + name + "!";
        }
        request.setAttribute("greeting", greeting);

        RequestDispatcher dispatcher = getServletContext()
            .getRequestDispatcher("/servlet-course/helloWorld.jsp");
        dispatcher.forward(request,response);
    }
}
</pre></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>helloWorld.jsp: </p></td>
        <td><pre>&lt;%@ page contentType="text/html;charset=UTF-8" language="java" %&gt;
&lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Greeting servlet&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;c:choose&gt;
    &lt;c:when test="&#36;{empty greeting}"&gt;
        Введите параметр 'name' в URL. &lt;br/&gt;
        Пример :
        &lt;c:set var = "server" value="${pageContext.request.serverName}" /&gt;
        &lt;c:set var = "port" value="${pageContext.request.serverPort}" /&gt;
        ${server}:${port}/servletcourse/helloWorld.jsp?name=Vova
    &lt;/c:when&gt;
    &lt;c:otherwise&gt;
        &lt;c:out value = "&#36;{greeting}"/&gt;
    &lt;/c:otherwise&gt;
&lt;/c:choose&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre></td>
    </tr>
    <tr><td><br></td></tr>
</table>
</body>
</html>
