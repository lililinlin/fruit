<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <title>회원정보수정</title>
    <script>
        $(function() {
             var lnb = $("#nav_wrapper").offset().top;
             $(window).scroll(function() {
                var window = $(this).scrollTop();
 
                if(lnb <= window) {
                   $("#nav_wrapper").addClass("fixed");
                } else {
                   $("#nav_wrapper").removeClass("fixed");
                }
             })
          });
    </script>
    <script>
    function checkValue()
	{
		if(!document.userInfo.password.value){
			alert("비밀번호를 입력하세요.");
			return false;
		}
		
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
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
                    
                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }
    
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
        $(function(){
            $('#password').keyup(function(){
            $('#chkNotice').html('');
            });

            $('#passwordcherk').keyup(function(){

                if($('#password').val() != $('#passwordcherk').val()){
                $('#chkNotice').html('<b>비밀번호 일치하지 않음</b><br><br>');
                $('#chkNotice').css('color', '#f82a2aa3');
                } else{
                $('#chkNotice').html('<b>비밀번호 일치함</b><br><br>');
                $('#chkNotice').css('color', '#199894b3');
                }

            });
        });
        </script>
    <style>

/* 전체 적용 */
         *{
              font-family: 'Noto Sans KR', sans-serif;
             /*  border: 1px solid red; */
         }
         a{ 
             color:black;
         }
         a:hover { text-decoration: none;}
         a:link { text-decoration: none;}

/* 헤더 */
        #wrapp{ /* 헤더전체div */
            text-align: center;
            width: 1200px;
            margin: 0 auto;
        }
        #head1{ /* 로그인|회원가입 */
            float: right;
            margin: 20px 20px 0 0;
        }
        #head_table{ /* 메인로고 , 검색창 */
           margin-top: -20px;
        }
        #head_table img{ /* 메인로고 */
            margin-left: 380px;
            width: 400px;
            height: 200px;

        }
        #head0{  /* 상단 초록색 바 */
            text-align: center;
            width: 100%;
            height: 30px;
            background-color: rgb(1, 114, 18);
            
        }
        #wrapp a{ /* 로그인|회원가입 a태그*/
            text-decoration: none;
            color: gray;
        }   

/* 헤더 검색창  */
        #custom-search-form {
        margin:0;
        margin-top: 5px;
        padding: 0;
          }
 
         #custom-search-form .search-query {
        padding-right: 3px;
        padding-right: 4px \9;
        padding-left: 3px;
        padding-left: 4px \9;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
 
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
         }
 
        #custom-search-form button {
        border: 0;
        background: none;
        /** belows styles are working good */
        padding: 2px 5px;
        margin-top: 2px;
        position: relative;
        left: -28px;
        /* IE7-8 doesn't have border-radius, so don't indent the padding */
        margin-bottom: 0;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
         }
 
        .search-query:focus + button {
        z-index: 3;   
         }
/* nav  */
         #nav h5{  /* nav 글씨색 */
           color: rgb(63, 63, 63); 
         }
         #nav h5:hover{
            color: #4eac87;
         }
         #nav_wrapper{
             width:100%;
             padding-bottom: 2px;
             box-shadow: 3px 3px 3px 1px rgb(247, 245, 245);
         }
         #nav_wrapper.fixed{
             position: fixed;
             padding-top:18px;
             left: 0; 
             top: 0; 
             width: 100%; 
             height:60px;
             background-color: white; 
             z-index:100; 
             /* border-bottom: 1px solid #4eac87; */
        }
        
         #nav{
            width:1200px;
            text-align: center;
            margin:0 auto;
            margin-bottom: 20px;
         }
         
         .main_menu_td{  /* nav 속성 */
            list-style-type: none;
            text-decoration: none;
            color: rgb(150, 147, 147);
            text-align: center;
        }
/* main */
		/* 회색박스 안에 내용 */
        #head_wrapper{ /* 회색 영역 */
            width: 100%;
            background-color:rgb(248, 248, 248);
            height: 350px;
        }
        #head_content{ /* 테이블담은 DIV */
            width: 1000px;
            margin: 0 auto;
            padding-top: 20px;
        }
        #head_content table{
            width: 1000px;
            border-spacing: 15px;
            border-collapse: separate;
        }
        #head_content table td{
            background-color: white;
            margin-right: 100px;
            width: 200px;
        }
        #head_top td{
            padding: 20px 0 20px 60px;
        }
        #head_top input{
            border: none;
            margin-top: 15px;
            font-size: 12px;
            width: 110px;
            height: 30px;
        }
        #membership{ /* 멤버쉽 네모 박스 */
            border: 1px solid #00af85; 
            width: 70px; 
            height: 70px; 
            padding-top: 20px;
            text-align: center;
            float: left;
            margin: 20px 40px 0 10px;
            color:#00af85;
        }
        #membership_right{ /* 멤버쉽 박스 옆 글씨부분 */
        	display: inline-block; 
        	padding-top: 20px;
        }
        /* 왼쪽 오른쪽 담은 div */
        #main_wrapper{ 
            padding: 50px 40px 0 50px;
            width: 1100px;
            margin: 0 auto;
        }
        /* 왼쪽 카테고리 */
        #main_left{
            float: left;
            width: 200px;
            height: 600px;
        }
        #main_left table{
            margin: 30px 0px 0px 10px;
            width: 200px;
            height: 80px;
        }
        #main_left table td{
            height: 50px;
            padding-left: 20px;
        }
        #main_left table tr{
            border: 1px solid rgb(231, 231, 231);
        }
        #main_left tr:hover{
            background-color: rgb(251, 249, 249);            
            cursor: pointer;
            color: #00af85;
        }
        
        /* 오른쪽 */
        #main_right{
            margin-left: 20px;
            float: right;
            width: 750px;
            height: 900px;
        }
        #main_right input{
        	width:250px;
        	height:40px;
        }
        #right_div{
         border-top: 1px solid rgb(1, 114, 18);
         border-bottom: 1px solid rgb(1, 114, 18);
         padding: 20px 20px 20px 70px ;
         margin-bottom: 50px;
        }
        #button_box{
        text-align: center;
        width: 450px;
        margin-left: 100px;
        }
        .button{
        border: 1px solid #00af85;
        background-color: #00af85;
        color: #fff;
		margin-left:20px
        }
        .button_cancel{
        color: #00af85;
        font-weight: 400;
        border: 1px solid #00af85;
        background: #fff;
        cursor: pointer;
        }
        	
/* footer */
        footer{
            width: 1200px;
            margin: 0 auto;
        }
        #footer_table{
            width: 1200px;
            text-align: center;
            margin: 0 auto;
            color: rgb(101, 101, 101)
        }
        #footer_table img{
            margin-left: 30px;
            width: 600px;
            height: 250px;
        }
        #footer_table strong{ /* footer a태그 */
            margin-right: 20px;
            font-size: 21px;
        }
        #footer_table strong:nth-child(n):hover{
            color: #4eac87;
        }
          
    </style>
   
</head>
<body>
    <div id="head0"></div>

        <div id="wrapp">
        
             <div id="head1">
                <%
				if (session.getAttribute("sessionID") == null) {
				%>
					<td>
						<a href="login">로그인<h> |&nbsp;</h></a>
						<a href="join_agree">회원가입</a>
					</td>
				<%
					} else if(session.getAttribute("sessionID") == "admin"){
				%>
					<td>
						<a href="mypage">마이페이지<h> |&nbsp;</h></a> 
						<a href="manager_main">관리자메인</a>
					</td>
				<%} else if(session.getAttribute("sessionID") != null && session.getAttribute("sessionID") != "admin"){ %>
					<td>
						<a href="MemberLogoutAction" >로그아웃<h> |</h></a>
						<a href="mypage">&nbsp;마이페이지</a>
					</td>
				<%
					}
				%>
            </div>

            <div>
                <table id="head_table">
                    <tr>
                        <td><img src="images/fruitrow.jpg" alt="" onclick="location.href='home'" style="cursor: pointer;"></td>
                        <td>
                            <form id="custom-search-form" class="form-search form-horizontal pull-right">
                                  <div class="input-append span12">
                                        <input type="text" class="search-query" placeholder="   과일검색" style="height: 35px; width: 300px;">
                                        <button type="submit" class="btn" style="height: 35px;"><i class="icon-search"></i></button>
                                   </div>
                            </form>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    <div id = "nav_wrapper">
        <table id = "nav">
            <tr>
                    <td class="main_menu_td">
                        <a href="season_fruit"><h5><b>제철과일</b></h5></a>
                    </td>
                    <td class="main_menu_td">
                        <a href="hot_fruit" ><h5><b>인기과일</b></h5></a>
                    </td>
                    <td class="main_menu_td">
                        <a href="aboard_fruit"><h5><b>수입과일</b></h5></a>
                    </td>
                    <td class="main_menu_td">
                        <a href="service_center" ><h5><b>고객센터</b></h5></a>
                    </td>
                    <td class="main_menu_td">
                        <a href="event"><h5><b>이벤트</b></h5></a>
                    </td> 
            </tr>
        </table>
    </div>
    

    <div id="head_wrapper">
        <div id="head_content">
            <table>
                <tr id="head_top">
                    <td>
                        <div id="membership">일반</div>
                        <div id="membership_right">
                            <span style="font-size: 22px;"><b>강이린</b></span> 님<br><br>
                            <small>적립 0.5%</small><br>
                            <input type="button" onClick="location.href='membership'"  value="전체등급보기">
                        </div>
                    </td>
                    <td>적립금<br><br>
                        <h3 style="color: #00af85;"><b>3634원 &nbsp;&nbsp; ></b></h3>
                    </td>
                </tr>
                <tr>   
                    <td colspan="2"><img src="https://via.placeholder.com/1000x70"></td>
                </tr>

            </table>
        </div>
    </div>
    
    <div id="main_wrapper">
        
            <div id="main_left">
                <h3><b>마이 푸룻츠</b></h3>
                <table>
                    <tr onClick="location.href='mypage_order'"><td><small>주문 내역</small></td><td>></td></tr>
                    <tr onClick="location.href='mypage_basket'"><td><small>장바 구니</small></td><td>></td></tr>
                    <tr onClick="location.href='mypage_update_check'"><td><small>내 정보</small></td><td>></td></tr>
                    
                </table>
            </div>

            <div id="main_right">
             <h4>개인 정보 수정</h4><br>
                  <form method="post" action="MypageModifyAction" name="userInfo" onsubmit="return checkValue()">
	            	<div id="right_div">
			                <table>
			                   <tr>
			                       <td>아이디</td>
			                       <td><%-- <%=member.getId() %> --%></td>
			                       <td></td>
			                       <tr><td><br></td></tr>
			                   </tr>
			                   <tr>
			                       <td>비밀번호</td>
			                       <td><input type="password" id="password"name="password" size="46"></td>
			                       <tr><td><br></td></tr>
			                   </tr>
			                   <tr>
			                       <td>비밀번호확인&nbsp;&nbsp;&nbsp;&nbsp;</td>
			                       <td><input type="password" id="passwordcherk" name="passwordcherk" size="46"></td>
			                       <tr><td><td><br><h6 id="chkNotice" size="2"></h6></td></td></tr>
			                   </tr>
			                   <tr>
			                    <td>이름</td>
			                    <td><%-- <%=member.getName() %> --%></td>
			                    <td></td>
			                    <tr><td><br></td></tr>
			                   </tr>
			                   <tr>
			                       <td>전화번호</td>
			                       <td><input type="text" name="phone" size="46" <%-- <%=member.getPhone() %> --%>></td>
			                       <tr><td><br></td></tr>
			                   </tr>
			                   <tr>
			                       <td>생년월일</td>
			                       <td><%-- <%=birthYear %> --%>년 <%-- <%=birthMonth %> --%>월 <%-- <%=birthDay %> --%>일</td>
			                           <tr><td><br></td></tr>
			                   </tr>
			                   <tr>
			                       <td>주소</td> 
			                       <td><input name="add1" type="text" id="sample6_postcode" placeholder="우편번호" >
			                        <input type="button" class="button" style="color:white; width:200px" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br><br>
			                        <input name="add2" type="text" id="sample6_address" placeholder="주소"><br><br>
			                        <input name="add3" type="text" id="sample6_detailAddress" placeholder="상세주소">
			                        <input name="add4" type="text" id="sample6_extraAddress" placeholder="참고항목"></td>
			                   </tr>
			                   <tr><td><br></td></tr> 
			   
			                </table>        
                        </div>
                        <div id="button_box">
	                        <input type="button" onClick="location.href='mypage'" class=button_cancel  value="취소" style="width: 200px;">
	                        <input type="submit" class=button id="modify" name="modify"  value="수정" style="width: 200px;">
                        </div>
               	</form>
            </div>
		</div>
        

            
    <footer>
        <table id="footer_table">
            <tr>
                <td><img src="images/fruitcol.jpg"></td>
                <td style="width: 300px;"><h3><b>고객센터</b></h3>
                    <h3><b>1600 - 1111</b></h3><br>
                    <h6><b>고객센터 이용시간</b></h6>
                    <small><b>평일 10:00 ~ 18:00<br>
                    점심시간 13:00 ~ 14:00</b></small>
                </td>
                <td style="width: 600px;" >
                    <strong onClick="location.href='footer_fruit'" style="cursor: pointer;">회사소개</strong>
                    <strong onClick="location.href='footer_terms'" style="cursor: pointer;">이용약관</strong>
                    <strong onClick="location.href='footer_personal'" style="cursor: pointer;">개인정보처리방침이용안내</strong><br><br>
                    <h7><b>법인명(상호) : 푸릇츠 <br>
                    대표 : 강이린,이정현 TEL : 02-900-9000 FAX : 02-1111-1111<br>
                    사업자등록번호 : 111-11-11111 통신판매업신고번호 : 제 1111 - 서울 - 0011호 <br>
                    주소 : 서울시 노원구 상계로로 971 개인정보관리책임자 : 강이린,이정현 <br>E-Mail : fruit@naver.com</b></h7></td>
            </tr>
        </table>
    </footer>
</body>
</html>