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
    <title>마이페이지 주문내역 - 후기작성</title>
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
        
        /* 오른쪽 NAV */
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
        
        /* 오른쪽 */
        #main_right{
            float: right;
            width: 750px;
            margin:0 0 50px 20px;
        }
        #main_right h3{ /* 후기작성 글씨 */
            padding-bottom: 30px;
            border-bottom: 1px solid #00af85;
        }
        #main_top{ /* 이미지 & 과일 이름 */
            padding: 25px 20px 25px 20px;
        }
        #main_top img{ /* 과일 이미지 */
            margin-right: 50px;
        }
        #main_table{ /* 제목 & 후기작성 테이블 */
            width: 750px;
            margin-bottom: 20px;
        }
        #main_table td{
            border: 1px solid rgb(219, 219, 219);
            padding: 20px;
        }
        #main_table input{ /* 제목 옆 input */
            padding-left: 10px;
            width: 580px;
            height: 30px;
            border: 1px solid rgb(219, 219, 219);
        }
        #main_table textarea{ /* 내용 옆 textarea */
            padding: 10px;
            height: 340px;
            width: 580px;
            text-align: left;
            border: 1px solid rgb(219, 219, 219);
        }
        .title{ /* 제목td & 후기작성td */
            width: 130px;
            text-align: center;
            background-color: rgb(250, 250, 250);
            font-size: small;
            color: rgb(59, 59, 59);
        }
        /* 작성 전에 있는 글씨 속성 */
        #main_table input::placeholder{color: rgb(207, 207, 207); font-size: 13px;}
        textarea::placeholder{color: rgb(207, 207, 207); font-size: 13px;} 
        #main_right a{ /* 1:1 문의하기 a 태그 */
            margin-left: 8px;
            color: #00af85;
        }
        /* 버튼 div */
        #btn_box{
            text-align: center;
            margin: 50px;
        }
        #btn_box input{
            width: 220px;
            height: 55px;
            border: 1px solid  rgb(211, 211, 211);
	        background-color:  rgb(255, 255, 255);
	        color:  rgb(211, 211, 211);
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
				<td><p class="side_p" onclick="location.href='membership'"style="cursor: pointer;">등급별 혜택</p></td>
			</tr> 
			<tr>
				<td><p class="side_p" onclick="location.href='basket'"style="cursor: pointer;">장바구니</p></td>
			</tr>
			<tr>
				<td><p class="side_p" onclick="location.href='service_center'" style="cursor: pointer;">1600-1111</p></td>
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
                            <input type="button" onClick="location.href='membership'" value="전체등급보기">
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
                <h3>후기 작성</h3>
                    <div id="main_top">
                        <img src="https://via.placeholder.com/100x120"> 
                        [제주도] 천혜향 1box
                    </div>
                    <form action="mypage_reivewaction" method="post">
                    <table id="main_table">
                        <tr>
                            <td class="title">제목</td>
                            <td><input type="text"  placeholder="제목을 입력해주세요."></td>
                        </tr>
                        <tr>
                            <td class="title">후기작성</td>
                            <td><textarea placeholder="자세한 후기는 다른 고객의 구매에 많은 도움이 되며,
오해의 소지가 있는 내용을 작성 시 검토 후 삭제 조치 될 수 있습니다.
반품/환불 문의는 1:1 문의로 가능합니다."
                                ></textarea></td>
                        </tr>
                    </table>
                    <small>혹시 상품에 문제가 있으셨나요? <a href="onetoone_question">1:1 문의 하기 ></a></small>
                    <div id="btn_box">
                        <input type="submit" value="등록하기">
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