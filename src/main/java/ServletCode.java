

import org.apache.commons.io.IOUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.Charset;

public class ServletCode extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        InputStream is = this.getClass().getResourceAsStream(request.getParameter("nameJsp")+".jsp");
        if (is == null) {
            is = new FileInputStream(new File("webapp", request.getParameter("nameJsp")+".jsp"));
        }
        IOUtils.copy(is,baos);
        is.close();
        baos.close();
        String javaSourceCode = new String(baos.toByteArray(), Charset.forName("utf-8"));

        request.setAttribute("javaSourceCode", javaSourceCode.replaceAll("</textarea>",""));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/"+request.getParameter("nameJsp")+".jsp");
        requestDispatcher.forward(request, response);
    }
}
