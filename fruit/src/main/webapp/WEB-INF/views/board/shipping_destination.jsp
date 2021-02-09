<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송지 선택</title>
	<style>
		#wrapper{
			width:100%;
			height:940px;
		}
		/* 제목 */
		#top{
			text-align: center;
		}
		#top p{
			color:gray;
		}
		/* 배송 정보 테이블 */
		#main_contents{
			width:600px;
			margin:0 auto;
			margin-top:50px;
		}
		#contents_table{
			width:600px;
		}
		#contents_table th, #contents_table td{
			text-align: center;
			height:50px;
		}
		#contents_table th{
			border-top: 2px solid black;
			border-bottom:1px solid black;
		}
		#contents_table td{
			padding-top:15px;
			padding-bottom:15px;
			border-bottom:1px solid rgb(195, 195, 195);
		}
		#contents_table h5{
			font-weight: normal;
			color:gray;
		}
		#contents_table input[type=submit]{
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
			border-radius: 5px;
		}
		#bottom{
			position:relative;
			top:580px;
			text-align: center;
			border-top:1px solid rgb(195, 195, 195);
		}
		#bottom a{
			text-decoration: none;
			color:black;
		}
	</style>
</head>
<body>
	<div id="wrapper">
		<div id="top">
			<h2>배송지</h2>
			<p>배송지에 따라 상품 정보가 달라질 수 있습니다.</p>
		</div>
		<div id="main_contents">
			<!-- <form action="" method="post"> -->
				<table id="contents_table">
					<tr>
						<th width="10%">선택</th>
						<th width="80%">배송 정보</th>
						<th width="10%">수정</th>
					</tr>
					<tr>
						<td><input type="radio" checked></td>
						<td>서울 강북구 도봉로 101길 53-8(한신빌라트)401호<br><h5>이정현 | 010-7777-4267</h5></td>
						<td><input type="submit" value="수정" onclick="location.href='address_edit'"></td>
					</tr>	
				</table>
			<!-- </form> -->
		</div>
		<div id="bottom">
			<h3><a href="add_destination">새 배송지 추가</a></h3>
		</div>
	</div>
</body>
</html>