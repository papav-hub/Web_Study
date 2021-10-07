<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>requdst_result</title>
</head>

<body>
	<div align="center">
		<H2>request 테스트 결과</H2>
		<form name=form1 method=post action=request_result.jsp>
			<table>
				<tr>
					<td>계정</td>
					<td><%= request.getParameter("userid") %></td>
				</tr>
				
				<tr>
					<td>암호</td>
					<td><%= request.getParameter("password") %></td>
				</tr>
				
				<tr>
					<td>클라이언트 IP 주소</td>
					<td><%= request.getRemoteAddr() %></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>