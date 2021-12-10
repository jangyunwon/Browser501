package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//교재 125 :: Jsp의 기본객체인 application을 Servlet로 작성한 것
@WebServlet("/Servoet10")
public class Servlet10 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ServletContext sc = getServletContext();
		String serverInfo = sc.getServerInfo();
		PrintWriter out = response.getWriter();
		out.println("<html><body>serverInfo(): "+serverInfo+"<br>");
		out.println("MajorVersion(): "+sc.getMajorVersion()+"<br>");
		out.println("MinorVersion(): "+sc.getMinorVersion()+" </body></html>");
	
	
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
