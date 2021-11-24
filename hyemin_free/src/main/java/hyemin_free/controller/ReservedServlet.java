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
import hyemin_free.persistence.CustomerDAO;
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
		
		if(cmdReq.equals("list")) {
			String movie_name = "";
			movie_name = request.getParameter("movie_name");
			
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
			
		}else if(cmdReq.equals("payment")) {
			// reserved add
			ReservedVO RVO = new ReservedVO();
			RVO.setCustomer_id(request.getParameter("customer_id"));
			RVO.setMovie_name(request.getParameter("movie_name"));
			RVO.setrow_column(request.getParameter("row_column"));
			
			ReservedDAO RDAO = new ReservedDAO();
			boolean add = RDAO.add(RVO);
			request.setAttribute("addReserved_result", add);
			
			// reserved list
			ReservedDAO dao = new ReservedDAO();
			ArrayList<ReservedVO> myReservedList = dao.getmyReservedList(request.getParameter("customer_id"));
			request.setAttribute("myReservedList", myReservedList);
			
			RequestDispatcher view = request.getRequestDispatcher("myPage.jsp");
			view.forward(request, response);

		}else if(cmdReq.equals("reservedDelete")) {
			ReservedVO reservedVO = new ReservedVO();
			reservedVO.setCustomer_id(request.getParameter("customer_id"));
			reservedVO.setMovie_name(request.getParameter("movie_name"));
			reservedVO.setrow_column(request.getParameter("row_column"));
			
			ReservedDAO reservedDAO = new ReservedDAO();
			boolean delete = reservedDAO.delete(reservedVO);
			request.setAttribute("addReserved_result", delete);// 여기까지 삭제
			
			// reserved list
			ReservedDAO dao = new ReservedDAO();
			ArrayList<ReservedVO> myReservedList = dao.getmyReservedList(request.getParameter("customer_id"));
			request.setAttribute("myReservedList", myReservedList);
			
			RequestDispatcher view = request.getRequestDispatcher("myPage.jsp");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);

	}

}
