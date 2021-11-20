<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LOGIN CHECK</title>
	</head>
	
	<meta http-equiv="refresh" content="2; url=http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list">
	
	<%
		boolean checkIdPassword = (boolean)request.getAttribute("checkIdPassword");
		String id = (String)request.getAttribute("id");
		
		if(checkIdPassword){
			session.setAttribute("id", id);
		}else{
			session.setAttribute("id", "null");
		}
	%>
	
	
	<body>
	
		<%
			if(session.getAttribute("id").equals("null")){
				out.println("<p>!!!!!로그인 실패!!!!!</p>");

			}else if(session.getAttribute("id").equals("admin")){
				out.println("<p>[관리자계정]</p>");
			
			}else{
				out.println("<p>로그인 성공!!</p>");
			}
		
		%>
		
	</body>
</html>