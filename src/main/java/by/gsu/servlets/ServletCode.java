package by.gsu.servlets;

import com.google.common.io.ByteStreams;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;


public class ServletCode extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String uri = request.getRequestURI();
        response.setContentType("text/plain; charset= utf-8");
        ServletOutputStream out = response.getOutputStream();
        try (InputStream is = getClass()
                .getClassLoader()
                .getResourceAsStream(uri.substring(uri.lastIndexOf("sources/")+8, uri.length()))) {
            ByteStreams.copy(is, out);
        } catch (Exception e) {
            e.printStackTrace(new PrintStream(out));
        }
    }
}
