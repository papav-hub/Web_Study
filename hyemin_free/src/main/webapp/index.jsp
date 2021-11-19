<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <link rel="stylesheet" href="css/netflix.css"> -->
    <title>index</title>
</head>


<body class="cuerpo">

<!--     <header class="iconos">
        <div class="imagen-iconos">
            <img id="imagen" src="media/logo-netflix.png" alt="">
        </div>
        <div class="panel-inicio">
            <h3 id="title1">PELICULAS Y SERIES ILIMITADAS</h3>
            <a id="title2" href="">
            <h3>UNIRTE AHORA</h3></a>
            <a id="title3" href="">
            <h3>INICIAS SESION</h3></a>
        </div>
    </header>
     -->
     
     
     
     <table>
 		<tr>
			<td>movie_name</td>
			<td>movie_info</td>
			<td>movie_age</td>
			<td>movie_genre</td>
			<td>movie_image</td>
			<td>movie_row</td>
			<td>movie_column</td>
		</tr>

		
		<%
			List<MovieVO> movieList = (List<MovieVO>)request.getAttribute("movieList");
			for(MovieVO vo : movieList){	
		%>
		
		<tr>
			<td><%=vo.getMovie_name() %></td>
			<td><%=vo.getMovie_info() %></td>
			<td><%=vo.getMovie_age() %></td>
			<td><%=vo.getMovie_genre() %></td>
			<td><%=vo.getMovie_image() %></td>
			<td><%=vo.getMovie_row() %></td>
			<td><%=vo.getMovie_column() %></td>
		</tr>
		
		<%
			}
		%>
		
	</table>
    
    
    
<!--     <section class="pelis-comentarios">
    
    	<div>
            <h2 class="titulo1">로맨스 장르</h2>
        </div>
    
    	<div class="imagen-descripcion1">
    		<div>
    			
    		</div>
    	</div>
    
    </section> -->
    
    
    
    
    
    <!-- <section class="pelis-comentarios">
        <div>
            <h2 class="titulo1">로맨스 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/barrenderos-espaciales.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/18-regalos.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/break.jpg" alt=""></a>
            </div>
        </div>
    </section> -->
    
    
    
    
    
    
   <!--  <section class="pelis-comentarios2">
        <div>
            <h2 class="titulo2">로맨스</h2>
        </div>
        <div class="imagen-descripcion2">
            <div>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/canvas.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/cielo-existe.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/dos-papas.jpg" alt=""></a>
            </div>
        </div>
    </section>
    
    
    
    
    
    
    
    
    <section class="pelis-comentarios3">
        <div>
            <h2 class="titulo3">액션</h2>
        </div>
        <div class="imagen-descripcion3">
            <div>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/teoria-del-todo.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/vivo.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/zombie-2.jpg" alt=""></a>
            </div>
        </div>
    </section>
    
    
    
    
    
    
    
    <section class="pelis-comentarios4">
        <div>
            <h2 class="titulo4">스릴러</h2>
        </div>
        <div class="imagen-descripcion4">
            <div>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/rompe-el-paraiso.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/gran-hope.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/everest.jpg" alt=""></a>
            </div>
        </div>
    </section>
    
    
    
    
    
    
    
    
    <section class="pelis-comentarios5">
        <div>
            <h2 class="titulo5">할리우드</h2>
        </div>
        <div class="imagen-descripcion5">
            <div>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/la-vida-ante-si.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/mia-leon.jpg" alt=""></a>
                <a href="http://localhost:8080/hyemin_free/seat.jsp"><img src="media/moxie.jpg" alt=""></a>
            </div>
        </div>
    </section> -->
    
    
    
    
    
    
<!--     <section class="descripcion-del-final">
        <h1 class="titulo-descripcion">Hay mucho más para ver.</h1>
        <p class="parrafo-descripcion">
            Netflix tiene un amplio catálogo de pelícuilas, series, documentales, <br> 
            animes, originales premiados y más. Todo lo que quieras ver, <br>
            cuando quieras.
        </p>
        <a class="boton" href="">UNIRTE AHORA</a>
    </section> -->
    
    
    
    
    
<!-- 	<footer class="pie">
        <br><br>
        <h3>Netflix Argentina</h3>
    </footer> -->
</body>


</html>