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
    <title>마이페이지 주문내역</title>
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
    <style>

/* 전체 적용 */
         *{
              font-family: 'Noto Sans KR', sans-serif;
              /* border: 1px solid red; */
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
         #basket_img{
        	height:35px;
        }
/* main */
        #side_table{
        	margin-top:400px;
        }
        #side_table td{
			border:1px solid  #e5e5e5;
			background-color: white;
		}
		#side_img{
			float:right;
			width:180px;
			margin-right:30px;	
		}
		.side_p{
			width:156px;
			padding-top:10px;
			text-align: center;
		}
		/* 회색박스 안에 내용 */
        #head_wrapper{ /* 회색 영역 */
            width: 100%;
            background-color:rgb(248, 248, 248);
            height: 300px;
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
            margin-bottom: 100px;
        }
        #top_box{ /* 주문내역 ~  select 까지 div */
            border-bottom: 1px solid #00af85;
            height: 70px;
            margin-bottom: 20px;
        }
        #top_box span{ /* 주문내역 큰 글씨 */
            font-size: 23px;
            margin-right: 10px;
            font-weight: bold;
        }
        #top_box small{ /* 주문내역 옆 작은 글씨 */
            color: rgb(158, 158, 158);
        }
        #top_box select{ /* 기간설정 select*/
            margin-left: 300px;
            width: 150px;
            height: 40px;
        }
        .title{ /* 주문 제목 */
            padding-left: 20px;
            height: 50PX;
        }
        .mid_box{
            margin: 10px 0 30px 0;
        }
        .right_table{
            width: 740px;
            margin: 10px 0 30px 0;
        } 
        .tr{
            border: 1px solid rgb(224, 224, 224);
        }   
        .small_table td{
            padding-right: 20px;
        }
        .small_table tr{
            height: 25px;
            font-size: smaller;
        }
        .img_td{
            padding: 20px 10px 20px 20px;
            width: 140px;
        }
        .content_td{
            width: 300px;
        }
        .right_td b{
            font-size: 22px;
            color:#00af85;
        }
        .right_td{
            width: 330px;
            text-align: right;
            padding-right: 20px;
        }
        .fruit_change{ /* 교환 환불 버튼*/
            margin-bottom: 10px;
            padding: 2px 13px 5px 12px;
            height: 32px;
            border: 2px solid #00af85;
            background-color: #00af85; 
            color: #fff;
        }
        .review{ /* 후기쓰기 버튼 */
            margin-bottom: 10px;
            padding: 2px 20px 5px 20px;
            height: 30px;
            border: 1px solid #00af85;
            background-color: #00af85; 
            color: #fff;
        }
        .onetoone{ /* 1:1 버튼 */
            height: 30px;
            padding: 2px 23px 5px 23px;
            border: 1px solid #00af85;
	        background-color:  #fff;
	        color:  #00af85;
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
   <script>
    $(function(){ 
       var $win = $(window); 
       var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
       /*사용자 설정 값 시작*/ 
       var speed = 700; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec) 
       var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing 
       var $layer = $('.float_sidebar'); // 레이어 셀렉팅 
       var layerTopOffset = 0; // 레이어 높이 상한선, 단위:px 
       $layer.css('position', 'relative').css('z-index', '1'); 
       /*사용자 설정 값 끝*/ 
       // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해 
       if (top > 0 ) 
          $win.scrollTop(layerTopOffset+top); 
          else $win.scrollTop(0); 
          //스크롤이벤트가 발생하면 
          $(window).scroll(function(){ 
             yPosition = $win.scrollTop() - 400; //이부분을 조정해서 화면에 보이도록 맞추세요 
             if (yPosition < 0) { 
                yPosition = 0; 
             } 
             $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
       }); 
    }); 
 </script>
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
                        <a href="basket"><h5><img id="basket_img"src="images/basket_green.jpg"></h5></a>
                    </td> 
            </tr>
        </table> 
    </div>
    <div id ="side_img" class="float_sidebar">
		<table id ="side_table">
			<tr>
				<td><img src="images/Advertising1.jpg"></td>
			</tr>
			<tr>
				<td><p class="side_p" onclick="location.href='service_center'"style="cursor: pointer;">공지사항</p></td>
			</tr> 
			<tr>
				<td><p class="side_p" onclick="location.href='basket'"style="cursor: pointer;">장바구니</p></td>
			</tr>
			<tr>
				<td><p class="side_p" >1600-1111</p></td>
			</tr>
		</table>
	</div> 
    
    
    <div id="head_wrapper">
        <div id="head_content">
            <table>
                <tr id="head_top">
                    <td>
                        <div id="membership_right">
                            <span style="font-size: 22px;"><b>강이린</b></span> 님<br><br>
                            <small>적립 0.5%</small><br>
                        </div>
                    </td>
                    <td>적립금<br><br>
                        <h3 style="color: #00af85;"><b>3634원 &nbsp;&nbsp; ></b></h3>
                    </td>
                </tr>
                <tr>   
                    <td colspan="2"><img src="images/fruit_b2.jpg"></td>
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
            
                <div id="top_box">
                    <span>주문 내역</span> <small>지난 주문 내역 조회가 가능합니다.</small>
                    <select onchange="myFunction(this.value)">
                        <option>전체기간</option>
                        <option value="2021">2021</option>
                        <option value="2020">2020</option>
                        <option value="2019">2019</option>
                    </select>
                </div>
                
                <%for(int i=1; i<6; i++){ %>
	                2020.12.28 (13시16분)
	                <div class="mid_box">
	                    <div>
	                       <form method="POST" name="frm<%=i%>">
	                                <table id="right_table">
	                                    <tr class="tr">
	                                        <td class="title" colspan="2">
	                                            <input type="submit" value="[제주도] 천혜향 1box 외 2건"
	                                            style="border: none; background-color: white;  outline:none;" onclick='btn_click<%=i%>("view");'></td>
	                                        <td class="right_td"><b>></b></td>
	                                    </tr>
	                                    <tr class="tr">
	                                        <td class="img_td"><img src="https://via.placeholder.com/100x120"></td>
	                                        <td class="content_td">
	                                            <table class="small_table">
	                                                <tr><td>주문번호</td> <td>16021546521</td> </tr>
	                                                <tr><td>결제금액</td> <td>17,300원</td></tr>
	                                                <tr><td>주문상태</td> <td>배송완료</td></tr>
	                                            </table>
	                                        </td>
	                                        <td class="right_td">
                                                <!-- 교환 / 환불 버튼은 구매한 날짜로부터 7일 이내만 나오게 설정  -->
                                                <!-- 후기 / 1:1 문의는 주문상태가 배송완료 일때  나오게 설정 -->
                                                <input type="submit" class="fruit_change" value="교환 / 환불"  onclick='btn_click<%=i%>("exchange");'><br>
	                                            <input type="submit" class="review" value="후기쓰기"  onclick='btn_click<%=i%>("select_review");'><br>
	                                            <input type="submit" class="onetoone" value="1:1문의" onclick='btn_click<%=i%>("onetoone1");'>
	                                        </td>
	                                    </tr>
	                                </table>
	                          </form> 
	                    </div>
	                </div>
                 <%} %>
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
<script>

    function myFunction(str) {
        //이곳에서 value값을 가져온 후 데이터베이스에서 해당 년도 주문내역가져오기 alert은 확인용 추후에 지우기
        alert(+ str + " 을 선택하였습니다." );
    
    }

    function btn_click1(str){                             
        if(str=="view"){                                 
            frm1.action="/mypage_orderlist";      
        } 
        else if(str=="select_review"){    
            frm1.action="/select_review";      
        }
        else if(str=="onetoone1"){    
            frm1.action="/notice_onetoone_write";      
        }
        else if(str=="exchange"){    
            frm1.action="/mypage_exchange";      
        }
        else {
            //...
        }
    }
    
    function btn_click2(str){                             
        if(str=="view"){                                 
            frm2.action="/mypage_orderlist";      
        } 
        else if(str=="select_review"){    
            frm2.action="/select_review";      
        }
        else if(str=="onetoone1"){    
            frm2.action="/notice_onetoone_write";      
        }
        else if(str=="exchange"){    
            frm2.action="/mypage_exchange";      
        }
        else {
            //...
        }
    }
    
    function btn_click3(str){                             
        if(str=="view"){                                 
            frm3.action="/mypage_orderlist";      
        } 
        else if(str=="select_review"){    
            frm3.action="/select_review";      
        }
        else if(str=="onetoone1"){    
            frm3.action="/notice_onetoone_write";      
        }
        else if(str=="exchange"){    
            frm3.action="/mypage_exchange";      
        }
        else {
            //...
        }
    }
    function btn_click4(str){                             
        if(str=="view"){                                 
            frm4.action="/mypage_orderlist";      
        } 
        else if(str=="select_review"){    
            frm4.action="/select_review";      
        }
        else if(str=="onetoone1"){    
            frm4.action="/notice_onetoone_write";      
        }
        else if(str=="exchange"){    
            frm4.action="/mypage_exchange";      
        }
        else {
            //...
        }
    }
    function btn_click5(str){                             
        if(str=="view"){                                 
            frm5.action="/mypage_orderlist";      
        } 
        else if(str=="select_review"){    
            frm5.action="/select_review";      
        }
        else if(str=="onetoone1"){    
            frm5.action="/notice_onetoone_write";      
        }
        else if(str=="exchange"){    
            frm5.action="/mypage_exchange";      
        }
        else {
            //...
        }
    }
    
    
    </script>
</html>