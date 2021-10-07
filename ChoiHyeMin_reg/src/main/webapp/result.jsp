<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" 
	import="kpu.web.club.domain.StudentVO"
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Web Service ProgrammingHomework</title>
	<link rel="stylesheet" href="resources/register.css" type="text/css"></link>
</head>

<body>
	<header> 2021 KPU Web Service Programming Community </header>
	
	<audio src="resources/Supreme.mp3" autoplay></audio>
	
	<p id=sect>
		커뮤니티 가입을 축하합니다.<br>
	</p>
	
	<% 
		StudentVO studentVO = (StudentVO)request.getAttribute("output");
	%>
	
	<table>
		<tr>
			<th>계정</th>
			<td style="text-align:center;"><%=studentVO.getId() %></td>
		</tr>

		<tr>
			<th>이름</th>
			<td style="text-align:center;"><%=studentVO.getUsername() %></td>
		</tr>
		<tr>
			<th>학번</th>
			<td style="text-align:center;"><%=studentVO.getSnum() %></td>
		</tr>
		<tr>
			<th>학과</th>
			<td style="text-align:center;"><%=studentVO.getDepart() %></td>
		</tr>
		<tr>
			<th>핸드폰</th>
			<td style="text-align:center;"><%=studentVO.getMobile() %></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td style="text-align:center;"><%=studentVO.getEmail() %></td>
		</tr>
	</table>
	
	<div>
		<a href="http://localhost:8080/ChoiHyeMin_reg/welcome.html">
			메인 페이지 이동
		</a>
	</div>
</body>
</html>