<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="hyemin_free.domain.*, java.util.List"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>seat</title>
		<link rel="stylesheet" href="css/seat.css">
		<link rel="stylesheet" href="css/netflix.css">
	</head>
	
	
	<header class="iconos">
        <div class="imagen-iconos">
            <img id="imagen" src="media/logo-netflix.png" alt="">
        </div>
    </header>
    
	
	
	
	<body class="cuerpo">
		<div align=center>
			<div class="seat-wrapper"></div>
		</div>
	</body>
	
	
	<% 
		List<ReservedVO> reservedList = (List<ReservedVO>)request.getAttribute("reservedList");
		int movie_column = (int)request.getAttribute("movie_column");
		int movie_row = (int)request.getAttribute("movie_row");
	%>
	
	<% 
		for(ReservedVO vo : reservedList){
			String row_column = vo.getrow_column();
			if(vo.getrow_column().equals("24")){
	%>
		<p>24</p>
		<p><%=row_column %></p>
		
	<%
		}
		}
	%>



	
	
	<script>
		
		

	
	    let test = [];
	    let selectedSeats = new Array();
	    let selectedSeatsMap = [];
	    const seatWrapper = document.querySelector(".seat-wrapper");
	    let clicked = "";
	    let div = "";
	
	    for (let i = 0; i < <%=movie_row%>; i++) {
	        div = document.createElement("div");
	        seatWrapper.append(div);
	        for (let j = 0; j < <%=movie_column%>; j++) {
	            const input = document.createElement('input');
	            input.type = "button";
	            input.name = "seats"
	            input.classList = "seat";
	            
	            
	            //3중포문을 사용하지 않기위해 
	            input.value = i + "" + j;
	            div.append(input);

	           
           
	            
	            // DB에 있는 경우 미리 빨간색으로 하기////////////////////////////////////////////////////////////////////////////////////////////

				<% 
				for(ReservedVO vo : reservedList){
					String row_column = vo.getrow_column();
				%>
				if(input.value == <%=row_column%>){
 	            	input.classList.add("booked"); // 이미 예약된 것은 검정색 처리
                    clicked = document.querySelectorAll(".clicked");
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    }) 
	            }
				
				<% } %>
	            // DB에 없는 경우 clickListener 수행
	            else{  
	            
		            input.addEventListener('click', function(e) {
		                //console.log(e.target.value);
		                //중복방지 함수
		                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);
		
	
		                if (input.classList.contains("clicked")) {//click class가 존재할때(제거해주는 toggle)
		                    input.classList.remove("clicked");
		                    clicked = document.querySelectorAll(".clicked");
		                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
		                    clicked.forEach((data) => {
		                        selectedSeats.push(data.value);
		                    });
	
		                } else {//click class가 존재하지 않을때 (추가해주는 toggle)
		                    input.classList.add("clicked");
		                    clicked = document.querySelectorAll(".clicked");
		                    clicked.forEach((data) => {
		                        selectedSeats.push(data.value);
		                    })
		                }
		                console.log(selectedSeats);
		                window.alert(selectedSeats); // 확인용
		            })
	            
	           }
	            

	        }
	    }

	</script>
</html>