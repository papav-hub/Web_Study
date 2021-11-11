package kpu.web.club.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import kpu.web.club.domain.StudentVO;
import kpu.web.club.persistence.StudentDAO;

/**
 * Servlet implementation class RestServlet
 */
@WebServlet("/RestServlet")
public class RestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestServlet() {
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
		response.setContentType("application/json;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String cmdReq;
		cmdReq = request.getParameter("cmd");
		if(cmdReq == null) return;
		
		StudentDAO studentDAO = new StudentDAO();
		List<StudentVO> studentList = studentDAO.getStudentList();
		JSONArray arrayJson = new JSONArray();
		
		if(cmdReq.equals("list")) {
			
			try {
				for(StudentVO vo : studentList) {
					JSONObject json = new JSONObject();
					json.put("id", vo.getId());
					json.put("passwd", vo.getPasswd());
					json.put("username", vo.getUsername());
					json.put("snum", vo.getSnum());
					json.put("depart", vo.getDepart());
					json.put("email", vo.getEmail());
					json.put("mobile1", vo.getMobile());
					arrayJson.put(json);
				}
			}
			catch (JSONException e) {
				e.printStackTrace();
			}
			out.print(arrayJson);
		
		
		}else if(cmdReq.equals("read")) {
			try {
				StudentDAO dao = new StudentDAO();
				StudentVO student = dao.read(request.getParameter("id"));
				
				JSONObject json = new JSONObject();
				json.put("id", student.getId());
				json.put("passwd", student.getPasswd());
				json.put("username", student.getUsername());
				json.put("snum", student.getSnum());
				json.put("depart", student.getDepart());
				json.put("email", student.getEmail());
				json.put("mobile1", student.getMobile());
				
				out.print(json);
			}
			catch (JSONException e) {
				e.printStackTrace();
			}
		
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
