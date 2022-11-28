<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="./js/jquery-3.6.1.js"></script>
</head>
<body>
	<script>
		// f1(); -> 앞에서 호출하면 오류남
		var f1 = function(){
			
			document.getElementById("d1").onclick = f3;
			var f3 = function(){
				
			};
			f3();
		};
		// f3(); -> scope(괄호) 밖에서 호출하면 오류남
		f1();
		
		
		f2();
		function f2(){
			
			document.getElementById("d1").addEventListener("click", f1);
			
		}
		f2();
		
		
		
	</script>
</body>
</html>