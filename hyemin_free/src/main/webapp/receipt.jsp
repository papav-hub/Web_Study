<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>RECEIPT</title>
	</head>
	
	
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