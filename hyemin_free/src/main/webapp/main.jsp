<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="myMovie" %>
<!DOCTYPE html>
<html>



<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/netflix.css">
    <title>main</title>
</head>

<body class="fondo-cuerpo">


	<!-- 헤더 -->
    <header class="iconos">
        <div class="imagen-iconos">
            <a id="title2" href="http://localhost:8000/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
        <div class="panel-inicio">
           
            <% if(session.getAttribute("id").equals("null")){ %>  <!-- session.getAttribute("id") -->
	            <a id="title2" href="http://localhost:8000/hyemin_free/CustomerServlet?cmdReq=login"><h3>로그인</h3></a>
	            <a id="title3" href="http://localhost:8000/hyemin_free/CustomerServlet?cmdReq=joinin"><h3>회원가입</h3></a>
	        <% }else if(session.getAttribute("id").equals("admin")){ %>
	        	<a id="title3" href=""><h3>관리자 계정</h3></a>
	        	<a id="title2" href="http://localhost:8000/hyemin_free/MovieServlet?cmdReq=addMovie"><h3>영화 추가</h3></a>
            <% }else{ %>
            	<a id="title3">${id}님</a> <%-- <%=session.getAttribute("id")%> --%>
            	<a id="title2" href="http://localhost:8000/hyemin_free/ReservedServlet?cmdReq=payment&customer_id=${id}"><h3>마이페이지</h3></a>
            <% } %>
            
        </div>
    </header>   
    
    
    
	<!-- main --> 
	
	<div style="background-image: url('<%="media/wonder.jpg"%>'); 
				background-size: cover;
	    		background-position: center center;
	    		height: 650px;
	    		width: auto;">
		<section class="wonder">
	        <div>
	            <img src="media/wonderLogo.png" alt="">
	        </div>
	        <div class="sector-detalle">
	            <h1 class="titulo-peli">WONDER</h1><br><br>
	            <div class="sector-detalle-peli">
	                <h3 id="h1"> 기타 &nbsp;</h3>
	                <h3 id="h2"> 5+ </h3>
	                <br>
	                <br>
	            </div>
	            
	            <br>
	            <p class="parrafoPeli">
	            	2018년 북미 극장가 가장 놀라운 화제작, 슈퍼히어로 이긴 기적 같은 흥행 주인공<br> 
	                "넌 못생기지 않았어, 네게 관심있는 사람은 알게 될 거야" <br> 
	                헬멧 속에 숨었던 아이 '어기', 세상 밖으로 나오다!<br> 
	            </p>
	            <br>
	            <div class="sector-detalle-peli">
	                <h3 id="h1">actor&nbsp;</h3>
	                <p id="nombres"> &nbsp; Julio Roberts, Owen Wilson, Jacob Tremblay</p>
	            </div>
	            <br>
	            
	        </div>
	    </section>
	</div>


	<myMovie:movieTag></myMovie:movieTag>


	<footer class="pie2">
        <br><br><br>
        <h3>Netflix KOREA</h3>
    </footer>
 
</body>

</html>