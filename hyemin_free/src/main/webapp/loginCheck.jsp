<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LOGIN CHECK</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	<meta http-equiv="refresh" content="2; url=http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list">
	
	<%
		boolean checkIdPassword = (boolean)request.getAttribute("checkIdPassword");
		String id = (String)request.getAttribute("id");
		
		if(checkIdPassword){ %>
			<c:set value="${id}" var="id" scope="session"/>
	<%	}else{ %>
			<c:set value="null" var="id" scope="session"/>
	<%	}%>
	
	
	<body style="background-color: black;">
		<ul>
		<%
			if(session.getAttribute("id").equals("null")){
				out.println("<p style=\"font-size:15pt; color:white; font-weight:bold;\">!!!!!로그인 실패!!!!!</p>");

			}else if(session.getAttribute("id").equals("admin")){
				out.println("<p style=\"font-size:15pt; color:white; font-weight:bold;\">[관리자계정]입니다.</p>");
			
			}else{
				out.println("<p style=\"font-size:15pt; color:white; font-weight:bold;\">로그인 성공!!</p>");
			}
		
		%>
		</ul>
	</body>
</html>