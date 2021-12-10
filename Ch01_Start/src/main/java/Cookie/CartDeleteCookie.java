package Cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CartDeleteCookie")
public class CartDeleteCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		
		
		Cookie[] c = request.getCookies();

		if(c != null && c.length>0){
			for(int i=0; i<c.length; i++){
			if(c[i].getName().equals("product"));{
				Cookie cookie = new Cookie("product","");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			}
			out.print("<html><body>장바구니 비웠음!!<br>");
			out.print("<a href='cookie.html'>상품 선택 페이지</a><br>");
			out.print("</body></html>");
		} else {
			out.println("쿠키가 존재하지 않습니다.");
		}
		
	}

}
