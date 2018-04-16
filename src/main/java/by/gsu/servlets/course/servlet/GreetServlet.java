package by.gsu.servlets.course.servlet;

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

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/servlet-course/helloWorld.jsp");
        dispatcher.forward(request,response);
    }
}
