<%@ tag language="java" body-content="tagdependent" pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>

<jsp:useBean id="movie_genre" class="hyemin_free.tag.MovieGenre"/>

<%for(String mv : movie_genre.getProductList()) {%>
	<section class="pelis-comentarios">
        <div>
            <h2 class="titulo1"><%=mv %> 장르</h2>
        </div>
        <div class="imagen-descripcion1">
            <div style="overflow-y:hidden; white-space:nowrap;">
            	<% 
					List<MovieVO> movieList = (List<MovieVO>)request.getAttribute("movieList");
						for(MovieVO vo : movieList){
				%>
					<%
						if(vo.getMovie_genre().equals(mv)){
							if(session.getAttribute("id").equals("null")){
					%>
	                	<a><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
	                <% }else if(session.getAttribute("id").equals("admin")){ %>
		                	<a href="http://localhost:8080/hyemin_free/MovieServlet?cmdReq=edit&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
		                
	                <%	}else{ %>
	                   	<a href="http://localhost:8080/hyemin_free/ReservedServlet?cmdReq=list&movie_name=<%=vo.getMovie_name() %>"><img src="media/<%=vo.getMovie_image() %>" alt=""></a>
					<% }}} %>
            </div>
        </div>
       </section>
<% } %>