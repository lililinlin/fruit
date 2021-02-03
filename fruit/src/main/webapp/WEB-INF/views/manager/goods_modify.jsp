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
    <title>삼품 수정</title>
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
/* main */
        /* 왼쪽 오른쪽 담은 div */
        #main_wrapper{ 
            padding: 50px 40px 0 50px;
            width: 1200px;
            margin: 0 auto;
        }

        /* --- 왼쪽 카테고리 ---*/
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
        
        /* ----- 오른쪽 -----*/
        #main_right{ /*오른쪽 전체 감싼 div*/
            margin-left: 20px;
            float: right;
            width: 850px;
            height: 1100px;
        }

        /* ----- 메인 테이블 ------- */
        #main_table{ 
            width: 820px;
            text-align: center;
            margin: 30px 0 30px 0;
            border-top: 1px solid #00af85;
            border-bottom: 1px solid #00af85;
        }
        #main_table tr:nth-child(2n+1){ 
            background-color: rgb(246, 246, 246);
        }
        #main_table td{ 
            height: 75px;
        }
        #main_table input,select{   /* 메인테이블 전체 input select */
            height: 40px;
            text-align: center;
        }
        #dis_rate{           /* [할인율] % input  */
            width: 100px;
        }
        #dis_price, #point{  /* [할인율] 원 input & [적립금] input */
            width: 130px;
            margin-left: 20px;
        }
        #stock{              /* [재고수량] input */
            width: 70px;
        }
        #main_table input[type=button]{  /* 중복확인 버튼 속성 */
            width: 85px;
            height: 35px;
            margin-bottom: 10px;
            border: 1px solid #00af85;
	        background-color: #00af85;
	        color: #fff;
        }
        /* ---------------------------- */

        /* 취소 등록 버튼 묶은 div*/
        #button_box{  
            width: 800px;
            text-align: center;
        }
        #button_box input[type=submit]{  /* 등록 버튼 */
            width: 250px;
            height: 50px;
            margin-bottom: 10px;
            border: 1px solid #00af85;
	        background-color: #00af85;
	        color: #fff;
        }
        #button_box input[type=button]{  /* 취소 버튼 */
            width: 250px;
            height: 50px;
            margin-bottom: 10px;
            border: 1px solid #00af85;
	        background-color:  #fff;
	        color:  #00af85;
            margin-right: 20px;
        }
		 /* 스크롤시 자동으로 따라오는 테이블바 */
        #side_table{
        	margin-top:50px;
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
               yPosition = $win.scrollTop() - 200; //이부분을 조정해서 화면에 보이도록 맞추세요 
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
				<td><a href="manager_modify">admin님</a><h> |&nbsp;</h>
					<a href="home">사용자페이지</a></td>
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
	            	<a href="manager_main"><h5><b>관리자메인</b></h5></a>
	            </td>
	            <td class="main_menu_td">
	            	<a href="manager_member"><h5><b>회원관리</b></h5></a>
	            </td>
	            <td class="main_menu_td">
	            	<a href="goods_list"><h5><b>상품관리</b></h5></a>
	            </td>
	            <td class="main_menu_td">
	            	<a href="order_management"><h5><b>주문관리</b></h5></a>
	            </td>
	            <td class="main_menu_td">
	            	<a href="notice_management" ><h5><b>게시판관리</b></h5></a>
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
				<td><p class="side_p" onclick="location.href='goods_register'"style="cursor: pointer;">상품등록</p></td>
			</tr> 
			<tr>
				<td><p class="side_p" onclick="location.href='review_management'"style="cursor: pointer;">최근후기</p></td>
			</tr>
			<tr>
				<td><p class="side_p" onclick="location.href='notice_management'" style="cursor: pointer;">공지사항</p></td>
			</tr>
			<tr>
				<td><p class="side_p" onclick="location.href='notice_onetoone_question'" style="cursor: pointer;">1:1문의</p></td>
			</tr>
		</table>
	</div>
	<div id="main_wrapper">
            <div id="main_left">
                <h3><b>상품관리</b></h3>
                <table>
                    <tr onClick="location.href='goods_list'"><td><small>상품 목록</small></td><td>></td></tr>
                    <tr onClick="location.href='goods_register'"><td><small>상품 등록</small></td><td>></td></tr>
                    
                </table>
            </div>

            <div id="main_right">
                <h4><b>상품 수정</b></h4>
                    <form action="goods_modifyAction" method="POST" id="goodsmodify" name="goodsmodify" onsubmit="return checkValue()">
                        <table id="main_table">
                            <tr>
                                <td>상품 번호</td>
                                <td><input id="input_register" type="text" name="id" size="46" value="2012154654">
                                    <input type="button"  value="중복확인" onclick="Check()">
                                    <input id="check_hidden" type="hidden"	value="no" />
                                </td>
                            </tr>
                            <tr>
                                <td>상품명</td>
                                <td><input type="text" id="goodsname" name="goodsname" value="딸기"></td>
                            </tr>
                            <tr>
                                <td>판매가</td>
                                <td><input type="text" id="price" name="PRICE" value="10000" onkeyup="disRate();"/> 원</td>
                            </tr>
                            <tr>
                                <td>할인율</td>
                                <td> <input type="text" id="dis_rate" name="DIS_RATE" value="20"onkeyup="disRate();"/> %
                                </td>
                            </tr>
                            <tr>
                            	<td>원산지</td>
                            	<td><input type="text" id="origin" name="origin" value="국내산"></td>
                            </tr>
                            <tr>
                            	<td>판매단위</td>
                            	<td><input type="text" id="unit" name="unit" value="통"></td>
                            </tr>
                            <tr>
                                <td>카테고리</td>
                                <td>
                                    <select name="categories" id="categories">
                                        <option value="season">제철과일</option>
                                        <option value="hot">인기과일</option>
                                        <option value="aboard">수입과일</option>
                                        <option value="event">이벤트</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>
                                    <select name="delivery" id="delivery">
                                        <option value="0">없음</option>
                                        <option value="1">2500원</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>재고수량</td>
                                <td><input type="text" id="stock" name="stock" value="95"> 개</td>
                            </tr>
                            <tr>
                                <td>상품 대표 이미지 등록</td>
                                <td><input type="file" id="main_img" name="main_img" value="Fi"></td>
                            </tr>
                            <tr>
                                <td>상품 소개 이미지 등록</td>
                                <td><input type="file" id="sub_img" name="sub_img"></td>
                            </tr>
                        </table>
                        <div id="button_box">
                            <input type="button" value="목록 으로" onClick="location.href='goods_list'">
                            <input type="submit" value="수정 하기">
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

<script>


    function disRate() {

        var dis_rate = $("#dis_rate").val(); //할인퍼센트
        var price = $("#price").val(); //정상가

        if ($("#price").val().trim() == "" || $("#dis_rate").val().trim() == "") {
            result = 0;
    
        } else {
            result1 = price*(dis_rate/100);
            result_price = price-result1;
            result_point = result_price*(3/100)
        }
        $("#dis_price").val(Math.round(result_price));
        $("#point").val(Math.round(result_point));
    }
    
   
</script>
</html>