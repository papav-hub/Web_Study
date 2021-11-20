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
		
		String selectedSeats = "";
		selectedSeats = request.getParameter("selectedSeats");
	%>
	
	<p><%=selectedSeats %></p>
	
	
	
	<body>
	
	</body>
</html>