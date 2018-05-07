package by.gsu.servlets;

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
            greeting = "Hello, " + firstName + " " + lastName + "!";
        }
        request.setAttribute("greeting", greeting);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/servlet-course/sendForm.jsp");
        dispatcher.forward(request,response);
    }
}
