<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib tagdir="/WEB-INF/tags" prefix="mytag" %>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>List Item Tag Test</title>
</head>
<body>

	<div align="center">
		<H2>태그 파일 예제 - list Item</H2>
		<HR>
		<mytag:item border="5" bgcolor="yellow"> <%=request.getRemoteAddr() %> 재고 현황 </mytag:item>
	</div>

</body>
</html>