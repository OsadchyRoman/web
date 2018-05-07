package by.gsu.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class IncrementServlet extends HttpServlet {

    private int result = 0;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        toDo(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        toDo(request, response);
    }

    private void toDo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        result ++;

        request.setAttribute("result", result);

        RequestDispatcher dispatcher = getServletContext()
                .getRequestDispatcher("/servlet-course/increment.jsp");
        dispatcher.forward(request,response);
    }
}
