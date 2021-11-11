<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jspbook.ch07.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="avo" class="jspbook.ch07.AddrVO" />
<jsp:setProperty name="avo" property="*"/>
<jsp:useBean id="adao" class="jspbook.ch07.AddrDAO" scope="application"/>

<% adao.add(avo); %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>addr_add_jsp</title>
</head>
<body>

	<div align=center>
		<h2>등록 내용</h2>
		이름 : <jsp:getProperty property="username" name="avo"/>
		<p>
		전화번호 : <%= avo.getTel() %>
		<p>
		이메일 : <%= avo.getEmail() %>
		<p>
		성별 : <%= avo.getSex() %>
		<hr>
		<a href="addr_list.jsp">목록 보기</a>
	</div>

</body>
</html>