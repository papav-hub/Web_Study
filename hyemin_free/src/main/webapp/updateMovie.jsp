<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>UPDATE MOVIE</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<%
		MovieVO vo = (MovieVO)request.getAttribute("movie");
	%>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8000/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	<body>
	
		<div>
		<form action="http://localhost:8000/hyemin_free/MovieServlet?cmdReq=editMovie" method="post">
			<fieldset>
				<legend>MOVIE INFORMATION</legend>
				
				<ul>
					<li>movie_name : <input type="text" name="movie_name" autofocus value=<%=vo.getMovie_name() %> readonly></li>
					<li>movie_info : <input type="text" name="movie_info"value=<%=vo.getMovie_info() %>></li>
					<li>movie_age : <input type="text" name="movie_age"value=<%=vo.getMovie_age() %>></li>
					<li>movie_genre  <select name="movie_genre">
							<option value="" selected disabled hidden>선택해주세요.</option>
							<option value="romance">romance</option>
							<option value="action">action</option>
							<option value="thriller">thriller</option>
							<option value="etc">etc</option>
						</select>
					
					</li>
					<li>movie_image : <input type="text" name="movie_image" value=<%=vo.getMovie_image() %>></li>
					<li>movie_row : <input type="text" name="movie_row" value=<%=vo.getMovie_row() %>></li>
					<li>movie_column : <input type="text" name="movie_column" value=<%=vo.getMovie_column() %>></li>
				</ul>
			</fieldset>
			
			<br>
			
			<fieldset>
				<input type="submit" name="submit" value="영화 수정하기">
				<input type="reset" name="reset" value="다시 작성">
			</fieldset>
		</form>
		</div>
	
	
	
	
	
	</body>
	
	    
    
	<footer class="pie2">
        <br><br><br>
        <h3>Netflix KOREA</h3>
    </footer>
</html>