<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>



	<body>
		
		<div align="center">
		
			<h3>&lt;c:choose&gt;</h3>
			
			<form>
				<select name="sel">
					<option value="" selected disabled hidden >선택해주세요.</option>
					<option>-</option>
					<option>a</option>
					<option>b</option>
					<option>c</option>
					<option>d</option>
				</select>
				
				<input type=submit value="선택">
			</form>
			
			<hr>
			
			<c:choose>
				<c:when test="${param.sel == 'a'}">
					a를 선택
				</c:when>
				
				<c:when test="${param.sel == 'b'}">
					b를 선택
				</c:when>
				
				<c:when test="${param.sel == 'c'}">
					c를 선택
				</c:when>
				
				<c:otherwise>
					a, b, c 외의 것을 선택
				</c:otherwise>
			</c:choose>
		
		</div>
		
	</body>
	
</html>