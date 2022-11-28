<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="<%= request.getContextPath() %>/js/jquery-3.6.1.js"></script>
</head>
<body>
	<h2 align="center">회원 가입 하기</h2>
	<hr>
	<section id="myinfo">
		<form action="<%=request.getContextPath() %>/enroll.do" id="enrollForm">
			<table>
				<tr>
					<td>ID :</td>
					<td><input type="text" name="id" id="userid" required></td>
					<!-- 띄어쓰기X, 특수문자X (_ . 허용), 영문자 대소문자 구분, 숫자 허용, 최대 20자까지, 
						primary key 이므로 not null-->
					
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="passwd"></td>
					<!-- 띄어쓰기X, 특수문자X (_ - ! # 허용), 영문자 대소문자 구분, 숫자 허용, 최대 20자까지 -->
				</tr>
				<tr>
					<td>이름 :</td>
					<td><input type="text" name="name"></td>
					<!-- 띄어쓰기O, 특수문자X, 영문자 대소문자 구분, 최대 100자까지 -->
				</tr>
				<tr>
					<td>E-Mail :</td>
					<td><input type="email" name="email"></td>
					<!-- 띄어쓰기X, 특수문자X (_ - . @ 허용), 영문자 대소문자 구분, 최대 200자까지 -->
				</tr>
			</table>
			<p align="center">
				<button type="button" class="btn_submit">회원가입하기</button>
				<button type="reset">작성 양식 초기화</button>
			</p>
		</form>
		
<script>
	window.onload = function(){
		
		document.getElementsByClassName("btn_submit")[0].onclick = function(){
			console.log(this);
			
			// 유효성 검사
			
			var idVal = $("input[name=id]").val();
			var idVal_2 = $("input[name=id]").val().trim();
			var passwdVal = $("input[name=passwd]").val();
			var passwdVal_2 = $("input[name=passwd]").val().trim();
			var emailVal = $("input[name=email]").val();
			var emailVal_2 = $("input[name=email]").val().trim();
			
			var nameVal = $("input[name=name]").val();
			
			console.log(idVal);
			console.log(passwdVal);
			console.log(nameVal);
			console.log(emailVal);
			
			// 유효하지 않은 데이터 발견시 return
			// 유효성 확인 순서 중요함.
			
			// 1. 띄어쓰기
			if(idVal != idVal_2) {
				alert("id에서 띄어쓰기 넣으면 안됩니다.");
				$("input[name=id]").val(idVal_2);
				$("input[name=id]").focus();
				return;
			}
			if(passwdVal != passwdVal_2) {
				alert("password에서 띄어쓰기 넣으면 안됩니다.");
				$("input[name=passwd]").focus();
				return;
			}
			if(emailVal != emailVal_2) {
				alert("email에서 띄어쓰기 넣으면 안됩니다.");
				$("input[name=email]").focus();
				return;
			}
			
			// 2. 최대 글자 수 제한
			var regId = /^[A-Za-z0-9_.]{1,20}$/;
			if( !regId.test(idVal) ){
				console.log("영문자, 숫자, _ . 만 입력가능");
				
				return;
			} else {
				console.log("정상id");
			}
			
			
			
			// <정규표현식 RegExp>
			// /패턴/
			// ^ : 시작문자, $ : 끝문자
			// [] : 문자 1개마다 유효한 문자 배열. -는 연속의 의미. ex) [A-Z][가-힣]
			// {} : 자릿수. []으로 유효한 문자 반복 횟수. ex) 	[0-9]{3,4}, \d{3,4}, 
			//											[0-9]{0,} => [0-9]*
			//											[0-9]{1,} => [0-9]+
			// . : 임의의 문자 1개, 줄바꿈글자 제외한 모든 문자 가능
			// * : 바로 앞 요소가 0번 이상 반복 {0,}  
			// + : 바로 앞 요소가 1번 이상 반복 {1,}
			// (패턴) : 그룹핑
			// (단어|단어|단어) : 단어들 중 하나와 일치하는지 찾기
			// (?=패턴) : 패턴이 있는지 찾기
			// \d : [0-9]				\D : \d 외 전부
			// \w : [A-Za-z0-9_]		\W : \w 외 전부
			// \s : 공백, 탭, 개행문자 등		\S : \s 외 전부
			
			// 예제) 적어도 1개 이상 입력, 영문자 + 숫자 + 특수문자(_!@#$%)
			var regExpTest = /^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[_!@#$%])[A-Z][A-Za-z0-9_!@#$%]{7,15}$/;
			
			
			
			// 예제) 첫글자는 영어 대문자, 영문자 + 숫자 + 특수문자(_!), 8~16글자
			var regExpTest = /^[A-Z][A-Za-z0-9_!]{7,15}$/;
			if( !regExpTest.test("Aaaaa99999") ) {
				console.log("유효하지 않음");
				return;
			} else {
				console.log("정상");
			}
			
			// 예제) 휴대폰번호 입력시
			// 첫번쨰 입력란에 010, 011, 016, 017, 018, 019 유효,
			// 두번째 입력란에 숫자 3-4글자
			// 세번째 입력란에 숫자 4글자
			var regExpTel1 = /^[0][1][012689]$/;
			var regExpTel2 = /^[0-9]{3,4}$/;
			var regExpTel3 = /^[0-9]{4}$/;
			var regExpTel = /^[0][1][012689]-[0-9]{3,4}-[0-9]{4}$/; // 합쳐서쓴거
			
			// 예제) 주민번호 입력시
			// 첫번쨰 입력란에 숫자 6자리
			// 두번째 입력란에 숫자 7자리, 첫글자는 1,2,3,4 가능
			var regExpIdNo1 = /^[0-9]{6}$/;
			var regExpIdNo2 = /^[1234][0-9]{6}$/;
			var regExpIdNo = /^[0-9]{6}-[1234][0-9]{6}$/; // 합쳐서쓴거
				
			
			
			
			// form의 action, method 지정
			
			// 1. 제이쿼리 방식
			// var frm = $("#enrollForm") 
			// $frm.attr("action", "${pageContext.request.contextPath}/enroll.do");
			// $frm.attr("method", "post");
			// frm.submit();
			
			// 2. 바닐라 방식
			var frm = document.getElementById("enrollForm"); 
			frm.action = "<%=request.getContextPath() %>/enroll.do";
			frm.method = "post"; -> 이 위치에서 이렇게 지정해도됨
			frm.submit();
			
			
			
			
			
			
			
			
		};
	};
</script>
</body>
</html>