<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"> 
<head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bxslider의 css 추가 -->
    <link rel="stylesheet" href="css/jquery.bxslider.css">
    <!-- Bootstrap CSS -->
    <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
        integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <title>메인</title>
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
/* 메인 슬라이드 */
         #wrapper{
            width: 100%;
            text-align: center; 
            
         }
        .slide-img{   
            width: 100%;
            height: 400px;
        }
        .main_discount-img:hover,.main_best-img:hover{
            transform:scale(1.1); 
        }
        .scale { /* 과일 이미지 감싼 div */
            width:300px; 
            height:400px; 
            overflow:hidden; 
            margin:0 auto;
            margin: 35px 0px 20px 65px;
            }
        .scale img { 
            width:300px; 
            height:400px;
            cursor: pointer;
            transform:scale(1); 
            transition:transform 0.5s linear;
        }

/* 메인 베스트상품 */
        #main_best{
            margin: 0 auto;
            text-align: center;
            width: 1200px;
            margin-bottom: 70px;
        }
        #main_best h5{
            color: #4eac87;
        }
        #main_best a{
            font-size: 28px;
            font-weight: bold;
            color: rgb(72, 72, 72);
        }
        .img_bottom_font, .img_bottom_price{ /* [베스트 ,이벤트]  이름과 가격 글씨 속성*/
            padding-left: 75px;
            text-align: left;
        }
        
        
/* 메인 이벤트상품 */
        #discount_wrapper{
            width: 100%;
            background-color: rgb(247, 247, 247);
            padding-top: 60px;
            padding-bottom: 70px;
        }   
        #main_discount{
            margin: 0 auto;
            text-align: center;
            width: 1200px;
        }
        #main_discount h5{
            color: #4eac87;
        }
        #main_discount a{
            font-size: 28px;
            font-weight: bold;
            color: rgb(72, 72, 72);
        }
		#side_table td{
			border:1px solid  #e5e5e5;
			background-color: white;
			padding-top:10px;
		}
		#side_img{
			float:right;
			width:180px;
			margin-right:30px;	
		}
		.side_p{
			width:156px;
			text-align: center;
		}
/* footer */
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
						<a href="join_agree">회원가입<h> |&nbsp;</h></a>
						<a href="mypage">마이페이지<h> |&nbsp;</h></a>
						<a href="manager_main">관리자메인</a> 
					</td>
				<%}else{ %>
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

    <div id="wrapper">
         <div class="bxslider">
                <div class="slider">
                    <img class="slide-img" src="images/main1.jpg" title="슬라이더1">
                </div>
                <div>
                    <img class="slide-img" src="images/main2.jpg" title="슬라이더2">
                </div>
                <div>
                    <img class="slide-img" src="images/main3.jpg" title="슬라이더3">           
                </div>
         </div>
    </div>

    <script src="js/jquery-2.2.4.min.js"></script>
    <script src="js/jquery.bxslider.js"></script>
    <script>
        $(function () {
            $('.bxslider').bxSlider({
                slideWidth: 6000,
                caption: true,//주석 이미지 title내용이 나옴.
                auto: true,//자동재생
                autoControls: true,//start/stop 버튼사용
                stopAutoOnClick: true,
                mode: "horizontal",//vertical(아래에서 위로 올라감), fade(위 아래 변화없이 서서히 바뀜) 전환효과
                speed: 700,//슬라이딩 속도
                adaptiveHeight: false,//이미지 높이에 따라 슬라이드 높이 결정
                touchEnabled: true,//터치 스와이프 사용 결정 이미지를 잡아서 옆으로 넘길 수 있다
                controls: true,//Prev,Next 버튼 사용여부
                prevText: "Prev", //이전버튼문구
                nextText: "Next",//다음버튼 문구
                autoHover: true//마우스 올리면 일시 정지
            });
        });
    </script>
    <!-- 사이드광고 자동 스크롤 -->
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
               yPosition = $win.scrollTop() - 350; //이부분을 조정해서 화면에 보이도록 맞추세요 
               if (yPosition < 0) { 
                  yPosition = 0; 
               } 
               $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
         }); 
      }); 
   </script>
	<div id = "main_contents">
		<div id ="side_img" class="float_sidebar">
			<table id ="side_table">
				<tr>
					<td><img src="images/Advertising1.jpg"></td>
				</tr>
				<tr>
					<td><p class="side_p" onclick="location.href='service_center'"style="cursor: pointer;">등급별 혜택</p></td>
				</tr>
				<tr>
					<td><p class="side_p" onclick="location.href='basket'"style="cursor: pointer;">장바구니</p></td>
				</tr>
				<tr>
					<td><p class="side_p" onclick="location.href='service_center'" style="cursor: pointer;">1600-1111</p></td>
				</tr>
			</table>
		</div>
	    <div id="main_best">
	        <a href="hot_fruit">인기 과일&nbsp;&nbsp;&nbsp;&nbsp;> </a>
	        <table>
	            <tr>
	                <td><div class="scale"><img class="main_best-img" src="https://via.placeholder.com/300x400" title="베스트상품1" onclick="location.href='fruit_view'" ></div></td>
	                <td><div class="scale"><img class="main_best-img" src="https://via.placeholder.com/300x400" title="베스트상품2" onclick="location.href='fruit_view'" ></div></td>
	                <td><div class="scale"><img class="main_best-img" src="https://via.placeholder.com/300x400" title="베스트상품3" onclick="location.href='fruit_view'" ></div></td>
	            </tr>
	            <tr>
	                <td class="img_bottom_font"><a href="fruit_view"><h4>체리</h4></a></td>
	                <td class="img_bottom_font"><a href="fruit_view"><h4>키위</h4></a></td>
	                <td class="img_bottom_font"><a href="fruit_view"><h4>토마토</h4></a></td>
	            </tr>
	            <tr>
	                <td class="img_bottom_price"><h5>12000원</h5></td>
	                <td class="img_bottom_price"><h5>7000원</h5></td>
	                <td class="img_bottom_price"><h5>9000원</h5></td>
	            </tr>
	        </table>
	    </div>
	
	    <div id="discount_wrapper">
	        <div id="main_discount">
	            <a href="event">이벤트&nbsp;&nbsp;&nbsp;&nbsp;> </a>
	            <table>
	                <tr>
	                    <td><div class="scale"><img class="main_best-img" src="https://via.placeholder.com/300x400" title="베스트상품1" onclick="location.href='fruit_view'" ></div></td>
	                    <td><div class="scale"><img class="main_best-img" src="https://via.placeholder.com/300x400" title="베스트상품2" onclick="location.href='fruit_view'" ></div></td>
	                    <td><div class="scale"><img class="main_best-img" src="https://via.placeholder.com/300x400" title="베스트상품3" onclick="location.href='fruit_view'" ></div></td>
	                </tr>
	                <tr>
	                    <td class="img_bottom_font"><a href="fruit_view"><h4>체리</h4></a></td>
	                    <td class="img_bottom_font"><a href="fruit_view"><h4>키위</h4></a></td>
	                    <td class="img_bottom_font"><a href="fruit_view"><h4>토마토</h4></a></td>
	                </tr>
	                <tr>
	                    <td class="img_bottom_price"><h5>12000원</h5></td>
	                    <td class="img_bottom_price"><h5>7000원</h5></td>
	                    <td class="img_bottom_price"><h5>9000원</h5></td>
	                </tr>
	            </table>
	        </div>
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