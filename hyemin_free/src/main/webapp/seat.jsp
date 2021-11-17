<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>seat</title>
		<link rel="stylesheet" href="css/seat.css">
	</head>
	
	
	
	<body>
		<div align=center>
			<div class="seat-wrapper"></div>
		</div>
	</body>
	
	
	<script>
	    let test = [];
	    let selectedSeats = new Array();
	    let selectedSeatsMap = [];
	    const seatWrapper = document.querySelector(".seat-wrapper");
	    let clicked = "";
	    let div = "";
	
	    for (let i = 0; i < 7; i++) {
	        div = document.createElement("div");
	        seatWrapper.append(div);
	        for (let j = 0; j < 7; j++) {
	            const input = document.createElement('input');
	            input.type = "button";
	            input.name = "seats"
	            input.classList = "seat";
	            
	            
	            //3중포문을 사용하지 않기위해 
	            mapping(input, i, j);
	            div.append(input);

	            
	            
	            
	            // DB에 있는 경우 미리 빨간색으로 하기
	            if(input.value == 3 + "" + 5){
	            	input.classList.add("booked"); // 이미 예약된 것은 검정색 처리
                    clicked = document.querySelectorAll(".clicked");
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    })
	            }
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
	
	    function mapping(input, i, j) {
	        if (i === 0) {
	            input.value = i + "" + j;
	        } else if (i === 1) {
	            input.value = i + "" + j;
	        } else if (i === 2) {
	            input.value = i + "" + j;
	        } else if (i === 3) {
	            input.value = i + "" + j;
	        } else if (i === 4) {
	            input.value = i + "" + j;
	        } else if (i === 5) {
	            input.value = i + "" + j;
	        } else if (i === 6) {
	            input.value = i + "" + j;
	        }
	    }
	</script>
</html>