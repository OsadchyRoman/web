package by.gsu.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;

public class StringWorkerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String greeting = request.getParameter("string");
        String color = request.getParameter("color");
        String caseOfString = request.getParameter("case");
        String direction = request.getParameter("direction");

        if ("fromEnd".equals(direction)) {
            greeting = new StringBuilder(greeting).reverse().toString();
        }

        if ("lower".equals(caseOfString)) {
            greeting = greeting.toLowerCase();
        } else {
            greeting = greeting.toUpperCase();
        }

        request.setAttribute("greeting", greeting);
        request.setAttribute("color", color);

        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/servlet-course/stringWork.jsp");
        dispatcher.forward(request, response);
    }
}
