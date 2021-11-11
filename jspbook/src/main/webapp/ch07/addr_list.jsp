<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "jspbook.ch07.*"%>
<!DOCTYPE html>

<jsp:useBean id="adao" class="jspbook.ch07.AddrDAO" scope="application"/>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>addr_list_jsp</title>
</head>


<body>
	<div align="center">
		<h2>주소록</h2>
		<hr>
		<a href="addr_form.html">주소 추가</a>
		<p>
		<table border=1>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
			</tr>
			
			<% for (AddrVO vo : adao.getAddrList()){ %>
			
			<tr>
				<td><%=vo.getUsername() %></td>
				<td><%=vo.getTel() %></td>
				<td><%=vo.getEmail() %></td>
				<td><%=vo.getSex() %></td>
			</tr>
			
			<% } %>
			
		</table>
	</div>

</body>
</html>