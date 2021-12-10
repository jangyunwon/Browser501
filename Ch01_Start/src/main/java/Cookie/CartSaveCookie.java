package Cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CartSaveCookie")
public class CartSaveCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
		

		Cookie c = new Cookie("product", request.getParameter("product"));
		response.addCookie(c);

			

		
		
		/*
		 * RequestDispatcher d = request.getRequestDispatcher("CartDeleteCookie");
		 * d.forward(request, response);
		 */
		
		out.print("<html><body>Product 추가");
		out.print("<a href ='CartBasketCookie'>장바구니보기2</a>");
		out.print("</body></html>");
		
		
	
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}