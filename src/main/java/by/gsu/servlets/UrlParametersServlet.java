package by.gsu.servlets;

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
        Map<String, Integer> result = new HashMap<>();
        Map<String, String[]> params = request.getParameterMap();
        for (Map.Entry<String, String[]> entry : params.entrySet()) {
            result.put(entry.getValue()[0], entry.getValue()[0].length());
        }
        request.setAttribute("result", result);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/servlet-course/allParameters.jsp");
        dispatcher.forward(request,response);
    }
}
