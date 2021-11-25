<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	
	<body>
		<div align="center">
			<h2>ch12:property.jsp</h2>
			<hr>
			Servlet Context 설정값 출력
			<hr>
			name3 : <%=getServletContext().getInitParameter("name3") %>
			<br>
			workspace : <%=getServletContext().getInitParameter("workspace") %>
		
		</div>
	</body>
</html>