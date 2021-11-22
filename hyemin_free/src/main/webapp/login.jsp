<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LogIn</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
    </header>
	
	<body style="background-color: black;">
		<div align=center>
			<form action="LoginGO" method="get" style="font-size:20pt; color:white; font-weight:bold;">
				ID <input type="text" name="id" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"><br>
				PASSWORD <input type="password" name="password" style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"><br>
				<input type="submit" value="LOGIN">
			</form>
		</div>
	
	</body>
</html>