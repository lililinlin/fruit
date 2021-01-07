<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<meta charset="UTF-8">
<title>새 배송 지역</title>
	<style>
		#wrapper{
			width:1900px;
			margin:0 auto;
		}
		/* 상단 인사글 */
		#div_top{
			text-align:center;
			width:1800px;
		}
		#div_h2{
			display: flex;
			margin-left:780px;
			margin-bottom:-20px;
		}
		#div_top h4{
			color:rgb(195, 195, 195);
		}
		/* 주소변경 input type을 담은 div */
		#main_contents{
			margin:0 auto;
			width:1800px;
		}
		#contents_table{
			width:1700px;
		}
		#contents_table #sample6_address{
			height:40px;
			width:1600px;
			margin-bottom:20px;
		}	
		#contents_table #sample6_extraAddress{
			height:40px;
			width:1700px;
			margin-bottom:20px;
		}
		#contents_table #sample6_detailAddress{
			height:40px;
			width:1700px;
			margin-bottom:20px;
		}
		#contents_table input[type=button]{
			width:90px;
			height:45px;
			margin-bottom:20px;	
			background-color:white;
			color:#00af85;
			border:1px solid #00af85;
		}
		input[type=submit]{
			width:1710px;
			height:45px;
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
		}
	</style>
</head>
<body>
	
	<div id="wrapper">
		<div id="div_top">
			<div id="div_h2">
				<h2 style="color: #00af85;">배송지</h2><h2>를 입력해주세요.</h2>
			</div>
			<h4>매일 아침,문 앞까지 신선함을 전해드려요.</h4>
		</div>
		<div id="main_contents">
			<form action="" method="post" name="readForm" role="form" onsubmit="return checkValue()">
				<table id="contents_table">
					<tr>
						<td><input type="text" id="sample6_address" placeholder="주소" readonly></td>
						<td><input type="button"  id="button1" value="재검색" name="address"onclick="sample6_execDaumPostcode()"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="text" id="sample6_extraAddress" name="extraAddress" placeholder="참고항목" readonly></td>
					</tr>
					<tr>
						<td colspan="2"><input type="text" id="sample6_detailAddress" name="detailAddress" placeholder="상세주소"></td>
					</tr>
				</table>
				<input type="submit" value="저장">
			</form>	
		</div>
	</div>
	 <script>
	 function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	    
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	    
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	    
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                        // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                    
	                    } 
                 else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	    
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	              
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	 function checkValue()
		{
			if(!document.readForm.address.value){
				alert("주소를 입력해주세요.");
				return false; //submit 취소
			}
			if(!document.readForm.extraAddress.value){
				alert("주소를 입력해주세요.");
				return false; //submit 취소
			}
			if(!document.readForm.detailAddress.value){
				alert("상세주소를 입력해주세요.");
				return false;
			}
		}
	</script>
</body>
</html>