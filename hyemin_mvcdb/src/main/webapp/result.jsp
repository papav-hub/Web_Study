<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="kpu.web.club.domain.*" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Web Service ProgrammingHomework</title>
	<link rel="stylesheet" href="resources/student.css" type="text/css"></link>
</head>


<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<header> 2021 KPU Web Service Programming Community </header>

<div>
	<p id=sect><%=request.getAttribute("greetings") %></p>
</div>
<br>


	<%
		StudentVO student = (StudentVO)request.getAttribute("student");
	%>
	
	<audio src="resources/Supreme.mp3" autoplay></audio>

	<table>
		<tr>
			<td>계정</td>
			<td>이름</td>
			<td>학번</td>
			<td>학과</td>
			<td>핸드폰</td>
			<td>메일주소</td>
		</tr>
	
		<tr>
			<td style="text-align:center;"><%=student.getId() %></td>
			<td style="text-align:center;"><%=student.getUsername() %></td>
			<td style="text-align:center;"><%=student.getSnum() %></td>
			<td style="text-align:center;"><%=student.getDepart() %></td>
			<td style="text-align:center;"><%=student.getMobile() %></td>
			<td style="text-align:center;"><%=student.getEmail() %></td>
		</tr>
	</table>
	
	<div>
		<a href="http://localhost:8080/hyemin_mvcdb/StudentServlet?cmd=list" target="_self">
			전체 회원 목록 보기
		</a>
	</div>

</body>
</html>