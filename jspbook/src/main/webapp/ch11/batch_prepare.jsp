<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="javax.sql.DataSource" %>

<!DOCTYPE html>
	
		<% request.setCharacterEncoding("UTF-8"); %>
		
		<%		
	 	Connection conn = null;
		PreparedStatement pstmt = null;
		
		try{
			Context initContext = new InitialContext();
			Context envContext = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/mysql");
			conn = ds.getConnection();
			
			conn.setAutoCommit(false);

			conn.setAutoCommit(false);
				if(request.getParameter("username1")!= null && request.getParameter("username2")!=null){
					String sql = "insert into jdbc_test values(?, ?)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, request.getParameter("username1"));
					pstmt.setString(2, request.getParameter("email1"));
					pstmt.addBatch();
					
					pstmt.setString(1, request.getParameter("username2"));
					pstmt.setString(2, request.getParameter("email2"));
					pstmt.addBatch();
					pstmt.executeBatch();
					pstmt.clearBatch();
					
					conn.commit();
				}
		}catch(Exception e){
			System.out.println(e);
			System.out.println("RollBack");
			conn.rollback();
		}			
		%>
	
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>JDBC TEST JSP</title>
</head>
<body>

	<div align="center">
		<H2>이벤트 등록</H2>
		<HR>
		<form name=form1 method=post>
			등록 이름1 : <input type=TEXT name=username1>
			주소1 : <input type=text name=email1 size=20>
			등록 이름2 : <input type=TEXT name=username2>
			주소2 : <input type=text name=email2 size=20>
			<input type=submit value="등록">
		</form>
		<HR>
	</div>
	
	
	# 등록 목록 <P>
	<%
		try{
	%>
			
			<sql:query var="rs" dataSource="jdbc/mysql">
				select username, email from jdbc_test
			</sql:query>
			
			<%int i = 1; %>
			<c:forEach var="row" items="${rs.rows }">
				<%out.println(i); %> : ${row.username}, ${row.email} <BR>
				<%i++; %>
			</c:forEach>
	<%

			
		}catch(Exception e){
			System.out.println(e);
		}
	%>

</body>
</html>