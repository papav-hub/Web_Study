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
            <img id="imagen" src="media/logo-netflix.png" alt="">
        </div>
        <div class="panel-inicio">
           <!--  <h3 id="title1">PELICULAS Y SERIES ILIMITADAS</h3> -->
            <a id="title2" href=""><h3>로그인</h3></a>
            <a id="title3" href=""><h3>관리자 로그인</h3></a>
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
	                <h3 id="h1">genre</h3>
	                <h3 id="h2">age</h3>
	                <br>
	                <br>
	            </div>
	            
	            <br>
	            <p class="parrafoPeli">
	                WonDer 영화 설명입니다. <br>
	            </p><br><br>
<!-- 	            <div class="protagonista-nombre">
	                <h4 id="prota">출연</h4>
	                <p id="nombres"> Julio Roberts, Owen Wilson, Jacob Tremblay</p>
	            </div> -->
	            
	        </div>
	    </section>
	</div>



    <!-- INDEX LIST  -->
    <%-- 
			<td><%=vo.getMovie_name() %></td>
			<td><%=vo.getMovie_info() %></td>
			<td><%=vo.getMovie_age() %></td>
			<td><%=vo.getMovie_genre() %></td>
			<td><%=vo.getMovie_image() %></td>
			<td><%=vo.getMovie_row() %></td>
			<td><%=vo.getMovie_column() %></td>
	 --%>


		<!-- ROMANCE  -->
		<section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">로맨스 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div>
            	<% 
					List<MovieVO> movieList = (List<MovieVO>)request.getAttribute("movieList");
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("romance")){
					%>
	                	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
	                <%		} %>
	                   		
				<%
					}
				%>
            </div>
        </div>
       </section>
				
			
		<!-- ACTION  -->	
		<section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">액션 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div>
            	<% 
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("action")){
					%>
	                	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
	                <%		} %>
	                   		
				<%
					}
				%>
            </div>
        </div>
       </section>
       
       
       <!-- THRILLER  -->
       <section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">스릴러 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div>
            	<% 
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("thriller")){
					%>
	                	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
	                <%		} %>
	                   		
				<%
					}
				%>
            </div>
        </div>
       </section>
       
       
       <!-- ETC  -->
       <section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">스릴러 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div>
            	<% 
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals("etc")){
					%>
	                	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
	                <%		} %>
	                   		
				<%
					}
				%>
            </div>
        </div>
       </section>		
				

				
				
				
				
				
				
    
    
<!--     <section>
        <div class="mas-detalles">
            <h1>Más detalles</h1>
        </div>
        <div class="contenedor-genero">
            <div>
                <h4 class="clase1">Protagonistas:</h4>
                <p class="texto1">Disponible para descargar</p>
            </div>
            <div>
                <h4 class="clase1">Protagonistas:</h4>
                <p class="texto1">Peliculas familiares,<br> peliculas vasadas en la vida real,<br> Pelicuolas vasadas en libros,<br> 
                    Peliculas infantiles y familiares, Dramas, <br> Melodramas</p>
            </div>
            <div>
                <h4 class="clase1">Protagonistas:</h4>
                <p class="texto1"> Inspirador,Emotivo,Optimistay</p>
            </div>
        </div>
        <div class="contenedor-genero2">
            <h4>Protagonistas:</h4>
            <p> Inspirador,Emotivo,Optimistay</p>
        </div>
    </section> -->
    
    
    
    
    
    
    
    <!-- <section class="contenedor-de-grillas">
        <h1>Más peliculas y series</h1>
        <div class="grilla">
            <div class="columnas-imagenes">
                <img class="imagen-todas" src="media/img2/18-regalos.jpg" alt="">
                <img class="imagen-todas" src="media/img2/barrenderos-espaciales.jpg" alt="">
                <img class="imagen-todas" src="media/img2/break.jpg" alt="">
            </div>
            <div class="columnas-imagenes">
                <img class="imagen-todas" src="media/img2/canvas.jpg" alt="">
                <img class="imagen-todas" src="media/img2/cielo-existe.jpg" alt="">
                <img class="imagen-todas" src="media/img2/dios-no-esta-muerto2.jpg" alt="">
            </div>
            <div class="columnas-imagenes">
                <img class="imagen-todas" src="media/img2/dos-papas.jpg" alt="">
                <img class="imagen-todas" src="media/img2/everest.jpg" alt="">
                <img class="imagen-todas" src="media/img2/gran-hope.jpg" alt="">
            </div>
            <div class="columnas-imagenes">
                <img class="imagen-todas" src="media/img2/la-vida-ante-si.jpg" alt="">
                <img class="imagen-todas" src="media/img2/moxie.jpg" alt="">
                <img class="imagen-todas" src="media/img2/primier-hombre-luna.jpg" alt="">
            </div>
        </div>
    </section> -->
    
    
    
    
    
    
    
    
    
    
<!--     <section class="section-contenedor-antes-pie">
        <div>
            <h1 class="titulo-antes-pie">Próximamente</h1>
        </div>
        <div class="contenedor-antes-pie">
            <div class="antes-pie1">
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">Dos sinvergüenzas</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">Hit & Run</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">El discípulo</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
            </div>
            <div class="antes-pie2">
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">Bangkok Breaking</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">Ídolo</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">Guía Headpace para el buen dormir</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
            </div>
            <div class="antes-pie3">
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">Entrapped</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1">De Slag om de Schelde</h3>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
                    Aperiam eveniet rerum minima et dolorum sunt dolore voluptatem facere 
                    corporis qui?
                </div>
                <div class="antes-pie-parrafo">
                    <h3 class="antes-pie-peli1"></h3>
                    
                </div>
            </div>
        </div>
    </section> -->
    
    
    
    
	<footer class="pie2">
        <br><br><br>
        <h3>Netflix KOREA</h3>
    </footer>
    
    
    
    
</body>




</html>