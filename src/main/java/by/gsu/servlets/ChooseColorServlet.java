package by.gsu.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ChooseColorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String color = request.getParameter("color");
        String name = request.getParameter("name");

        String greeting = null;
        if (name != null) {
            greeting = "Hello, " + name + "!";
        }

        if (color == null) {
            color = "black";
        }

        request.setAttribute("greeting", greeting);
        request.setAttribute("color", color.toLowerCase());

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/servlet-course/chooseColor.jsp");
        dispatcher.forward(request,response);
    }
}
