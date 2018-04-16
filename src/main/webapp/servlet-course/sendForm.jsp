<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Send form</title>
    <style>
        td {vertical-align: top; text-align: left;}
        pre {border: dashed 1px #634F36; background: #fffff5; font-family: "Courier New", Courier, monospace; padding: 7px; font-size: 80%; margin: 0 0 1em; width: 760px;}
    </style>
</head>
<body>
<table cols="2">
    <tr>
        <td><p>Ответ сервлета:</p></td>
        <td><p>
            <c:choose>
                <c:when test="${empty greeting}">
                   <span style="color: red;"> Заполните и отправте форму ниже, пожалуйста! </span>
                </c:when>
                <c:otherwise>
                    <span style="color: green;"> <c:out value = "${greeting}"/> </span>
                </c:otherwise>
            </c:choose>

        </p></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Форма для отправки:</p></td>
        <td>
            <p>
            <form method="post" action="/servletcourse/sendForm.jsp"
                  style="padding: 10px; border: 1px solid black; width: 175px;">
                <label for="firstName">First Name:</label> <br/>
                <input id="firstName" name="firstName"/> <br/>

                <label for="lastName">Last Name:</label> <br/>
                <input id="lastName" name="lastName"/> <br/>
                <br/>
                <input type="submit" value="Send">
            </form>
            </p>
        </td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>Условие:</p></td>
        <td><p>
            Описан сервлет, который будет приветствовать пользователя. На вход сервлет будет принимать форму,
            с заполненными полями name, age.
            И отвечать приветствием на переданную форму.
        </p></td>
    </tr>

    <tr><td><br></td></tr>
    <tr>
        <td><p>PersonInfoServlet.java: </p></td>
        <td><pre>
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class PersonInfoServlet extends HttpServlet {

    protected  void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        String greeting = null;
        if (firstName != null && lastName != null) {
            greeting = "Hello, " + firstName + " " + lastName +"!";
        }
        request.setAttribute("greeting", greeting);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/servlet-course/sendForm.jsp");
        dispatcher.forward(request,response);
    }
}
</pre></td>
    </tr>
    <tr><td><br></td></tr>
    <tr>
        <td><p>sendForm.jsp: </p></td>
        <td><pre>&lt;%@ page contentType="text/html;charset=UTF-8" language="java" %&gt;
&lt;%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Send form&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;table cols="2"&gt;
    &lt;tr&gt;
        &lt;td&gt;&lt;p&gt;Ответ сервлета:&lt;/p&gt;&lt;/td&gt;
        &lt;td&gt;&lt;p&gt;
            &lt;c:choose&gt;
                &lt;c:when test="&#36;{empty greeting}"&gt;
                    &lt;span style="color: red;"&gt; Заполните и отправте форму ниже, пожалуйста! &lt;/span&gt;
                &lt;/c:when&gt;
                &lt;c:otherwise&gt;
                    &lt;span style="color: green;"&gt; &lt;c:out value = "&#36;{greeting}"/&gt; &lt;/span&gt;
                &lt;/c:otherwise&gt;
            &lt;/c:choose&gt;

        &lt;/p&gt;&lt;/td&gt;
    &lt;/tr&gt;
    &lt;tr&gt;&lt;td&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;
    &lt;tr&gt;
        &lt;td&gt;&lt;p&gt;Форма для отправки:&lt;/p&gt;&lt;/td&gt;
        &lt;td&gt;
            &lt;p&gt;
            &lt;form method="post" action="/servletcourse/sendForm.jsp"&gt;
                &lt;label for="firstName"&gt;First Name:&lt;/label&gt; &lt;br/&gt;
                &lt;input id="firstName" name="firstName"/&gt; &lt;br/&gt;

                &lt;label for="lastName"&gt;Last Name:&lt;/label&gt; &lt;br/&gt;
                &lt;input id="lastName" name="lastName"/&gt; &lt;br/&gt;
                &lt;br/&gt;
                &lt;input type="submit" value="Send"&gt;
            &lt;/form&gt;
            &lt;/p&gt;
        &lt;/td&gt;
    &lt;/tr&gt;
&lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre></td>
    </tr>
    <tr><td><br></td></tr>
</table>
</body>
</html>
