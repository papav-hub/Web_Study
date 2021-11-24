<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>UPDATE MOVIE CHECK</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	
	<%
		MovieVO vo = (MovieVO)request.getAttribute("movie");
	%>

	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
    
	<body>
	
		<div>

			<fieldset>
				<legend>MOVIE INFORMATION</legend>
				
				<ul>
					<li>movie_name : <input type="text" name="movie_name" autofocus value=<%=vo.getMovie_name() %> readonly></li>
					<li>movie_info : <input type="text" name="movie_info"value=<%=vo.getMovie_info() %>  readonly></li>
					<li>movie_age : <input type="text" name="movie_age"value=<%=vo.getMovie_age() %>  readonly></li>
					<li>movie_genre : <input type="text" name="movie_age"value=<%=vo.getMovie_genre() %>  readonly></li>
					<li>movie_image : <input type="text" name="movie_image" value=<%=vo.getMovie_image() %> readonly></li>
					<li>movie_row : <input type="text" name="movie_row" value=<%=vo.getMovie_row() %> readonly></li>
					<li>movie_column : <input type="text" name="movie_column" value=<%=vo.getMovie_column() %> readonly></li>
				</ul>
			</fieldset>

		</div>
	
	
	
	
	
	</body>
</html>