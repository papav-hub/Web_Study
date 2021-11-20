<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MYPAGE</title>
		<link rel="stylesheet" href="css/seat.css">
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<%
		List<ReservedVO> myReservedList = (List<ReservedVO>)request.getAttribute("myReservedList");
		boolean addReserved_result = (boolean)request.getAttribute("addReserved_result");
	%>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	<body style='background-color: black;'>
	<table>
		<tr>
			<td><h2 class="titulo1">영화제목</h2></td>
			<td><h2 class="titulo1">좌석</h2></td>
			<%-- <td><h2 class="titulo1"><%=addReserved_result %></h2></td> --%>
		</tr>
		
		
		<%
			for(ReservedVO vo : myReservedList){
		%>
		<tr>
			<td><h2 class="titulo1"><%=vo.getMovie_name() %></h2></td>
			<td><h2 class="titulo1"><%=vo.getrow_column() %></h2></td>
		</tr>
		<% } %>

	</table>
	</body>
</html>
