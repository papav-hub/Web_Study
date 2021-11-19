package hyemin_free.persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import hyemin_free.domain.MovieVO;

public class MovieDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/jspdb?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC";
	
	
	
	public ArrayList<MovieVO> getMovieList() {
		connect();
		ArrayList<MovieVO> movieList = new ArrayList<MovieVO>();
		String sql = "select * from movie";
		
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MovieVO vo = new MovieVO();
				vo.setMovie_name(rs.getString("movie_name"));
				vo.setMovie_info(rs.getString("movie_info"));
				vo.setMovie_age((rs.getString("movie_age")));
				vo.setMovie_genre(rs.getString("movie_genre"));
				vo.setMovie_image(rs.getString("movie_image"));
				vo.setMovie_row((rs.getString("movie_row")));
				vo.setMovie_column((rs.getString("movie_column")));
				
				movieList.add(vo);
			}
			rs.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return movieList;
	}
	
	
	
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "jspbook","passwd");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
