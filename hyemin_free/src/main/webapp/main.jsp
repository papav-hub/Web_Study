<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
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
            <a id="title2" href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=list"><img id="imagen" src="media/logo-netflix.png" alt=""></a>
        </div>
        <div class="panel-inicio">
           
            <% if(session.getAttribute("id").equals("null")){ %>
	            <a id="title2" href="http://localhost:8080/hyemin_free/login.jsp"><h3>로그인</h3></a>
	            <a id="title3" href="http://localhost:8080/hyemin_free/joinin.jsp"><h3>회원가입</h3></a>
	        <% }else if(session.getAttribute("id").equals("admin")){ %>
	        	<a id="title3" href=""><h3>관리자 계정</h3></a>
	        	<a id="title2" href="http://localhost:8080/hyemin_free/addMovie.jsp"><h3>영화 추가</h3></a>
            <% }else{ %>
            	<a id="title3"><h3><%=session.getAttribute("id")%> 님</h3></a>
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
	                <h3 id="h1"> 기타 </h3>
	                <h3 id="h2"> 5+ </h3>
	                <br>
	                <br>
	            </div>
	            
	            <br>
	            <p class="parrafoPeli">
	            	2018년 북미 극장가 가장 놀라운 화제작, 슈퍼히어로 이긴 기적 같은 흥행 주인공<br> 
	                "넌 못생기지 않았어, 네게 관심있는 사람은 알게 될 거야" <br> 
	                헬멧 속에 숨었던 아이 '어기', 세상 밖으로 나오다!<br> 
	            </p><br><br>
<!-- 	            <div class="protagonista-nombre">
	                <h4 id="prota">출연</h4>
	                <p id="nombres"> Julio Roberts, Owen Wilson, Jacob Tremblay</p>
	            </div> -->
	            
	        </div>
	    </section>
	</div>


		<!-- 1.ROMANCE  -->
		<section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">로맨스 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div style="overflow-y:hidden; white-space:nowrap;">
            	<% 
					List<MovieVO> movieList = (List<MovieVO>)request.getAttribute("movieList");
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("romance")){
							if(session.getAttribute("id").equals("null")){
					%>
	                	<a><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
	                <%	}else{ %>
	                   	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
					<% }}} %>
            </div>
        </div>
       </section>
      
				
			
		<!-- 2.ACTION  -->	
		<section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">액션 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div style="overflow-y:hidden; white-space:nowrap;">
            	<% 
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("action")){
							if(session.getAttribute("id").equals("null")){
						%>
		                	<a><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
		                <%	}else{ %>
		                   	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
						<% }}} %>
            </div>
        </div>
       </section>
       
       
       <!-- 3.THRILLER  -->
       <section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">스릴러 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div style="overflow-y:hidden; white-space:nowrap;">
            	<% 
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("thriller")){
							if(session.getAttribute("id").equals("null")){
						%>
		                	<a><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
		                <%	}else{ %>
		                   	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
						<% }}} %>
            </div>
        </div>
       </section>
       
       
       <!-- 4.ETC  -->
       <section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">기타</h2>
        </div>
        <div class="imagen-descripcion1">
            <div style="overflow-y:hidden; white-space:nowrap;">
            	<% 
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("etc")){
							if(session.getAttribute("id").equals("null")){
						%>
		                	<a><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
		                <%	}else{ %>
		                   	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
						<% }}} %>
            </div>
        </div>
       </section>		   
    
    
    
	<footer class="pie2">
        <br><br><br>
        <h3>Netflix KOREA</h3>
    </footer>
    
    
    
    
</body>




</html>