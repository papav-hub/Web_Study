package hyemin_free.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hyemin_free.domain.MovieVO;
import hyemin_free.domain.ReservedVO;
import hyemin_free.persistence.MovieDAO;
import hyemin_free.persistence.ReservedDAO;

/**
 * Servlet implementation class ReservedServlet
 */
@WebServlet("/ReservedServlet")
public class ReservedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservedServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		
		String cmdReq = "";
		cmdReq = request.getParameter("cmdReq");
		
		String movie_name = "";
		movie_name = request.getParameter("movie_name");
		
		if(cmdReq.equals("list")) {
			ReservedDAO dao = new ReservedDAO();
			ArrayList<ReservedVO> reservedList = dao.getMovieReservedList(movie_name);
			int movie_column = dao.getMovie_column(movie_name);
			int movie_row = dao.getMovie_row(movie_name);
			request.setAttribute("reservedList", reservedList);
			request.setAttribute("movie_column", movie_column);
			request.setAttribute("movie_row", movie_row);
			request.setAttribute("movie_name", movie_name);
			RequestDispatcher view = request.getRequestDispatcher("seat.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
