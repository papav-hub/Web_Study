<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>

	<%
		request.setCharacterEncoding("UTF-8");
		String msg = request.getParameter("msg");
		Object username = session.getAttribute("user");
		ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
		if(msgs == null){
			msgs = new ArrayList<String>();
			application.setAttribute("msgs", msgs);
		}
		msgs.add(username + " :: " + msgs + " , " + new java.util.Date());
		application.log(msgs + " 추가됨");
		response.sendRedirect("twitter_list.jsp");
		
	%>

<html>
<head>
	<meta charset="UTF-8">
	<title>tweet</title>
</head>
<body>
</body>
</html>