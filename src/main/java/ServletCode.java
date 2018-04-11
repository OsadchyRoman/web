import com.google.common.io.ByteStreams;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.Charset;

public class ServletCode extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();
        response.setCharacterEncoding("Windows-1251");
        PrintWriter out = response.getWriter();
        try (ByteArrayOutputStream baos = new ByteArrayOutputStream(); InputStream is = this.getClass().getResourceAsStream(uri.substring(9, uri.length()))){
            ByteStreams.copy(is, baos);
            out.println(new String(baos.toByteArray(), Charset.forName("UTF-8")));
        }
        catch (Exception e){
            out.println("File not found");
        }
    }
}
