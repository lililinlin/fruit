<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>받으실 장소</title>
</head>
	<style>
		#wrapper{
			width:1900px;
			margin:0 auto;
		}
		#main_contents{
			width:1900px;
			margin:0 auto;
			padding-left:10px;
		}
		/* 받으실분 */
		#customer{
			width:1850px;
			height:35px;
		}
		/* 번호 */
		#phone{
			width:1850px;
			height:35px;
		}
		/* 라디오 버튼 */
		.radio_bt{
			width:25px;
			height:25px;
		}
		/* 취소 버튼 */
		#cencel_bt{
			margin-top:20px;
			width:926px;
			height:50px;
			background-color:white;
			color:#00af85;
			border:1px solid #00af85;
		}
		/* 저장 버튼 */
		#save_bt{
			width:1860px;
			height:50px;
			margin-top:30px;
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
		}
	</style>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 저장
			$("#save_bt").on("click", function(){
				formObj.attr("action", "place_update");
				formObj.attr("method", "post");
			
			})
			
			// 삭제
			$("#cencel_bt").on("click", function(){
				formObj.attr("action", "place_delete");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
	    function checkValue()
		{
			/* var checked = false;
			var cencel = document.getElementById("cencel_bt");
			cencel.onclick = function(){
				checked = true;
			} */
			if(!document.readForm.name.value){
				alert("받으실 분 이름을 입력해주세요.");
				return false; //submit 취소
			}
			
			if(!document.readForm.phone.value){
				alert("휴대폰 번호를 입력해주세요.");
				return false;
			}
		}
	</script>
<body>
	<div id="wrapper">
		<div id="main_contents">
			<h2>배송정보</h2>
			<h4>받으실 분</h4>
			<form name="readForm" role="form" method="post" onsubmit="return checkValue()">
				<input type="text" id="customer" name="name">
				<h4>휴대폰</h4>
				<input type="text" id="phone" name="phone">
				<br><br>
				<h4>받으실 장소</h4>
				<table>
					<tr>
						<td><input type="radio"  id="choice1" class="radio_bt" name="place" value="choice1" checked="checked"></td>
						<td><label for="choice1" class="place">문 앞</label></td>
					</tr>
					<tr>
						<td><input type="radio"  id="choice2" class="radio_bt" name="place" value="choice2"></td>
						<td><label for="choice2" class="place">경비실</label></td>
					</tr>
					<tr>
						<td><input type="radio"  id="choice3" class="radio_bt" name="place" value="choice3"></td>
						<td><label for="choice3	" class="place">택배함</label></td>
					</tr>
				</table>
				<input type="submit" id="save_bt" value="저장">
			</form>
		</div>
	</div>
</body>
</html>