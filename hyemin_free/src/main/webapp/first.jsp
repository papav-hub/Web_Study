<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>WELCOME</title>
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	<c:set value="null" var="id" scope="session"/>
	
	<meta http-equiv="refresh" content="2; url=http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list">
	
	<div style="background-image: url('<%="media/logo-netflix.png"%>'); 
				background-size: cover;
	    		background-position: center center;
	    		height: 650px;
	    		width: auto;">
</html>