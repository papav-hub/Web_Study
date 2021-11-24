<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>ADD MOVIE</title>
	</head>
	
	<body>
	
		<div>
		<form action="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=addMovie" method="post">
			<fieldset>
				<legend>MOVIE INFORMATION</legend>
				
				<ul>
					<li>movie_name : <input type="text" name="movie_name" autofocus></li>
					<li>movie_info : <input type="text" name="movie_info"></li>
					<li>movie_age : <input type="text" name="movie_age"></li>
					<li>movie_genre  <select name="movie_genre">
							<option value="romance">romance</option>
							<option value="action">action</option>
							<option value="thriller">thriller</option>
							<option value="etc">etc</option>
						</select>
					
					</li>
					<li>movie_image : <input type="text" name="movie_image"></li>
					<li>movie_row : <input type="text" name="movie_row"></li>
					<li>movie_column : <input type="text" name="movie_column"></li>
				</ul>
			</fieldset>
			
			<br>
			
			<fieldset>
				<input type="submit" name="submit" value="영화 추가하기">
				<input type="reset" name="reset" value="다시 작성">
			</fieldset>
		</form>
		</div>
	
	
	
	
	
	</body>
</html>