package study;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. annotation 방식 - 권장사항
@WebServlet("/study02/Member")
public class Member extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		
		Enumeration<String> enu = request.getParameterNames();
		
		while (enu.hasMoreElements()) {
			String name = enu.nextElement();
		//	String value = 
		}
		
		String title = request.getParameter("title");
		String author = request.getParameter("subject");
		String content = request.getParameter("content");
		
		
		out.println("author: "+author+"<br>");
		out.println("content: "+content+"</body></html>");


	}

}
