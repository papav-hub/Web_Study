<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RECEIPT</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	
	<%
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html charset=UTF-8");
		
		String selectedSeats = request.getParameter("selectedSeats");
		String movie_name = request.getParameter("movie_name");
	%>
	
	<p><%=selectedSeats %></p>
	<p><%=movie_name %></p>
	
	<body>
	
	</body>
</html>