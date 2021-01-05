<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<head>
<meta charset="UTF-8">
<title>배송지 수정</title>
	<style>
		#wrapper{
			margin-left:20px;
		}
		/* 주소 */
		#address_h4{
			font-weight: normal;
		}
		/* 상세주소 */
		#detail_address{
			width:1850px;
			height:35px;
		}
		/* 받으실 분 */
		#customer{
			width:1850px;
			height:35px;
		}
		/* 휴대폰번호 */
		#phone{
			width:1850px;
			height:35px;
		}
		/* 저장 버튼 */
		#save_bt{
			width:1858px;
			height:40px;
			margin-top:40px;
			margin-bottom:10px;
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
			font-size: 15px;
		}
		/* 삭제 버튼 */
		#delete_bt{
			width:1858px;
			height:40px;
			background-color:white;
			color:#00af85;
			border:1px solid #00af85;
			font-size:15px;
		}
	</style>
	 <script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='readForm']");
			
			// 수정 
			$("#save_bt").on("click", function(){
				formObj.attr("action", "destination_update");
				formObj.attr("method", "post");
			
			})
			
			// 삭제
			$("#delete_bt").on("click", function(){
				formObj.attr("action", "destination_delete");
				formObj.attr("method", "post");
				formObj.submit();
			})
		})
	</script>
</head>
<body>
	<div id="wrapper">
		<h2>배송지 수정</h2>
		<form name="readForm" role="form" method="post">
			<h4 id="address_h4">서울 강북구 도봉로 101길 53-8(한신빌라트)</h4>
			<input type="text" id="detail_address">
			<h4>받으실 분</h4>
			<input type="text" id="customer">
			<h4>휴대폰</h4>
			<input type="text" id="phone"><br>
			<input type="submit" value="저장" id="save_bt"><br>
			<input type="submit" value="삭제" id="delete_bt">
		</form>
	</div>
</body>
</html>