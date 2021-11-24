<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MOVIE ADD CHECK</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	<meta http-equiv="refresh" content="2; url=http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list">
	
	<%
		boolean MovieAddCheck = (boolean)request.getAttribute("MovieAddCheck");
	%>
	
	
	<body>
	
		<%
			if(MovieAddCheck){
				out.println("<p>영화 추가 성공!!</p>");
			}else{
				out.println("<p>영화 추가 실패 0o0</p>");
			}
		
		%>
		
	</body>
</html>