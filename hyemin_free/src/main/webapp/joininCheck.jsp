<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JOININ CHECK</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	<meta http-equiv="refresh" content="2; url=http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list">
	
	<%
		boolean joinin = (boolean)request.getAttribute("joinin");
		String id = (String)request.getAttribute("id");
		
		if(joinin){
			session.setAttribute("id", id);
		}else{
			session.setAttribute("id", "null");
		}
	%>
	
	
	<body style="background-color: black;">
		<ul>
		<%
			if(session.getAttribute("id").equals("null")){
				out.println("<p style=\"font-size:15pt; color:white; font-weight:bold;\">!!!!!회원가입 실패!!!!!</p>");

			}else if(session.getAttribute("id").equals("admin")){
				out.println("<p style=\"font-size:15pt; color:white; font-weight:bold;\">[관리자계정]입니다.</p>");
			
			}else{
				out.println("<p style=\"font-size:15pt; color:white; font-weight:bold;\">회원가입 성공!!</p>");
			}
		
		%>
		</ul>
	</body>
</html>