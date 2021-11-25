package jspbook.ch12;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PropertyServlet
 */

@WebServlet(
		urlPatterns = {"/PropertyServlet"},
		initParams = {@WebInitParam(name="name1", value="강호동"),
					@WebInitParam(name="name2", value="홍길동")})

public class PropertyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML><BODY><center>");
		out.println("<H2>ch12:PropertyServlet</h2>");
		out.println("<H2>");
		
		out.println("name1 : " + getInitParameter("name1") + "<br>");
		out.println("name2 : " + getInitParameter("name2"));
		
		out.println("<hr>");
		
		out.println("name3 : " + getServletContext().getInitParameter("name3"));
		out.println("</center></body></html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.println("<HTML><BODY><center>");
		out.println("<H2>ch12:PropertyServlet</h2>");
		out.println("<H2>");
		
		out.println("name1 : " + getInitParameter("name1") + "<br>");
		out.println("name2 : " + getInitParameter("name2"));
		
		out.println("<hr>");
		
		out.println("name3 : " + getServletContext().getInitParameter("name3"));
		out.println("</center></body></html>");
		
	}

}
