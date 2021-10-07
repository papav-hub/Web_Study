<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="calc" class="jspbook.ch02.CalcBean"/>

<jsp:setProperty name="calc" property="*"/>

<% calc.calculate(); %>


<html>
	<head>
		<meta charset="UTF-8">
		<title>계산기</title>
	</head>

	<body>
		<div align="center">
			<H3>계산기 : 빈즈 사용</H3>
			<HR>
				<form name=form1 action='calculate2.jsp' method=post>
					<input type="text" name="num1" width=200 size="5">
					<select name="operator">
						<option selected>+</option>
						<option>-</option>
						<option>*</option>
						<option>/</option>
					</select>
					
					<input type="text" name="num2" width=200 size="5">
					<input type="submit" value="계산" name="B1">
					<input type="reset" value="다시 입력" name="B2">			
				</form>
			<HR>
			계산 결과 : <jsp:getProperty name="calc" property="result"/>
		</div>
	</body>
</html>
