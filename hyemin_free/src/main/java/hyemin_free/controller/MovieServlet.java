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
 * Servlet implementation class MovieServlet
 */
@WebServlet("/MovieServlet")
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MovieServlet() {
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
		
		if(cmdReq.equals("list")) {
			MovieDAO dao = new MovieDAO();
			ArrayList<MovieVO> movieList = dao.getMovieList();
			request.setAttribute("movieList", movieList);
			RequestDispatcher view = request.getRequestDispatcher("main.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		
		String cmdReq = "";
		cmdReq = request.getParameter("cmdReq");
		
		if(cmdReq.equals("addMovie")) { // 영화 추가
			
			MovieVO movieVO = new MovieVO();
			
			movieVO.setMovie_name(request.getParameter("movie_name"));
			movieVO.setMovie_info(request.getParameter("movie_info"));
			movieVO.setMovie_age(Integer.parseInt(request.getParameter("movie_age")));
			movieVO.setMovie_genre(request.getParameter("movie_genre"));
			movieVO.setMovie_image(request.getParameter("movie_image"));
			movieVO.setMovie_row(Integer.parseInt(request.getParameter("movie_row")));
			movieVO.setMovie_column(Integer.parseInt(request.getParameter("movie_column")));
			
			MovieDAO movieDAO = new MovieDAO();
			
			if(movieDAO.add(movieVO)) {
				ReservedVO reservedVO = new ReservedVO();
				reservedVO.setCustomer_id("admin");
				reservedVO.setMovie_name(request.getParameter("movie_name"));
				reservedVO.setrow_column("10000");
				
				ReservedDAO reservedDAO = new ReservedDAO();
				if(reservedDAO.add(reservedVO)) {
					request.setAttribute("MovieAddCheck", true);
				}else {
					request.setAttribute("MovieAddCheck", false);	
				}
			}else {
				request.setAttribute("MovieAddCheck", false);
			}
			
			RequestDispatcher view = request.getRequestDispatcher("addMovieCheck.jsp");
			view.forward(request, response);
			
		}
	
	}

}
