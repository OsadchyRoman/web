<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>All parameters</title>
    <style>
        td {vertical-align: top; text-align: left;}
        pre {border: dashed 1px #634F36; background: #fffff5; font-family: "Courier New", Courier, monospace; padding: 7px; font-size: 80%; margin: 0 0 1em; width: 800px;}
    </style>
</head>
<body>
<table cols="2">
    <tr>
        <td><p>Ответ сервлета:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty result}">
                    Введите параметры в URL. <br/>
                    <c:set var = "server" value="${pageContext.request.serverName}" />
                    <c:set var = "port" value="${pageContext.request.serverPort}" />
                    Пример : ${server}:${port}/servletcourse/allParameters.jsp?i=Roman&mother=Anna&father=Misha
                </c:when>
                <c:otherwise>
                    <ul>
                        <c:forEach var="item" items="${result}">
                            <li>
                                ${item.key} - ${item.value}
                            </li>
                        </c:forEach>
                    </ul>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет подсчитывать длину каждого параметра в URL. На вход сервлет
            будет принимать параметры, и отвечать списком подсчитанных длин.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>UrlParametersServlet.java: </p></td>
        <td><pre>
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class UrlParametersServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Map&lt;String, Integer&gt; result = new HashMap&lt;&gt;();
        Map&lt;String, String[]&gt; params = request.getParameterMap();
        // calculate length of each parameter
        for (Map.Entry&lt;String, String[]&gt; entry : params.entrySet()) {
            result.put(entry.getValue()[0], entry.getValue()[0].length());
        }

        request.setAttribute("result", result);

        RequestDispatcher dispatcher = getServletContext()
            .getRequestDispatcher("/servlet-course/allParameters.jsp");
        dispatcher.forward(request,response);
    }
}
</pre></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>allParameters.jsp: </p></td>
        <td><pre>
&lt;%@ page contentType="text/html;charset=UTF-8" language="java" %&gt;
&lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %&gt;

&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;All parameters&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
 &lt;c:choose&gt;
     &lt;c:when test="&#36;{empty result}"&gt;
         Введите параметры в URL. &lt;br/&gt;
         &lt;c:set var = "server" value="${pageContext.request.serverName}" /&gt;
         &lt;c:set var = "port" value="${pageContext.request.serverPort}" /&gt;
         Пример : ${server}:${port}/servletcourse/allParameters.jsp?i=Roman&mother=Anna&father=Misha
     &lt;/c:when&gt;
     &lt;c:otherwise&gt;
        &lt;ul&gt;
            &lt;c:forEach var="item" items="&#36;{result}"&gt;
                &lt;li&gt;
                    &#36;{item.key} - &#36;{item.value}
                &lt;/li&gt;
            &lt;/c:forEach&gt;
        &lt;/ul&gt;
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
