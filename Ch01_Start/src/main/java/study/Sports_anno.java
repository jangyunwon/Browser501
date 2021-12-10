package study;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//1. annotation 방식 - 권장사항
@WebServlet("/study02/sports")
public class Sports_anno extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	//get 방식은 ?name=hong 
	// 개별 서버 ?
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		String[] sports = request.getParameterValues("sports");
		String sex = request.getParameter("sex");
		PrintWriter out = response.getWriter();
		out.println("<html><body>좋아하는 운동 = ");
		if(sports != null){
			for(int i=0; i<sports.length; i++){
		out.println(sports[i]);
		};
			
			
			out.println("<br>성별 = "+sex+"</body></html>");
	};

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
