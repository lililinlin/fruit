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
    <title>관리자 메인 최근 주문 내역 - 주문서</title>
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
            padding: 50px 160px 0 0;
            width: 1200px;
            height:800px;
            margin: 0 auto;   
        }
        /* 오른쪽 */
        #main_right{ /*오른쪽 전체 감싼 div*/
            float: right;
            width: 850px;
        }
        #main_table_box{ /* 상품내역 테이블 감싼 div*/
            border-top: 3px solid #4eac87;
        }
        #orderlist{ /* 상품내역 테이블 */
            margin: 0 0 50px 10px;
        }
        #orderlist th{ /* th = 과일이름 */
            padding-left: 30px;
            height: 50px;
            font-weight: normal;
        }
        #orderlist td{
            padding: 15px 0 15px 30px;
            border-top: 1px solid rgb(195, 195, 195);
            border-bottom: 1px solid rgb(195, 195, 195);
        }
        .second_td{ /* 2번째 td (과일,가격,구매숫자) */
            text-align: left;
            width: 500px;
            padding-left: 20px;
        }
        .delevery{ /* 배송상태 */
            width: 200px;
            text-align: center;
            color: #4eac87;
            font-weight: 600;
        }
       small{ 
           color: gray;
       }
       .mid_box{ /* 결제정보 , 주문정보 , 배송정보 각각 div*/
        padding: 10px 0 10px 0;
         width: 800px;
         border-top: 2px solid gray;
         border-bottom: 1px solid rgb(243, 243, 243);
         margin: 20px 0 40px 0;
       }
       .mid_box table{
           margin-left: 15px;
           width: 400px;
       }
       .mid_box td{
           width: 200px;
           height: 40px;
           font-size: 13px;
       }
       #main_right h5{
           color: rgb(90, 90, 90);
       }
       #btn_box{
           text-align: center;
           margin: 70px;
       }
       #btn_box input{
            width: 250px;
            height: 60px;
            border: 1px solid #00af85;
            background-color: #00af85; 
            color: #fff;
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
               yPosition = $win.scrollTop() - 100; //이부분을 조정해서 화면에 보이도록 맞추세요 
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
            <div id="main_right">
                <h4><b>주문 내역 상세</b></h4><br>
                <h5>주문번호 165456412154 </h5><br>
                <div id="main_table_box">
                    <table id="orderlist">
                        <th>딸기</th>
                        <tr>
                            <td><img src="https://via.placeholder.com/120x150"  onClick="location.href='fruit_view'" style="cursor: pointer;"></td>
                            <td class="second_td">
                                <a href="fruit_view"><h5>딸기 1팩</h5></a> 
                                <b>4,400원</b>&nbsp;&nbsp;
                                <small>1개 구매</small></td>
                            <td class="delevery">배송완료</td>
                        </tr>
                        <th>두리안</th>
                        <tr> 
                            <td><img src="https://via.placeholder.com/120x150"  onClick="location.href='fruit_view'" style="cursor: pointer;"></td>
                            <td class="second_td">
                                <a href="fruit_view"><h5>방울토마토 500g</h5></a> 
                                <b>7,800원</b>&nbsp;&nbsp;
                                <small>1개 구매</small></td>
                            <td class="delevery">배송완료</td>
                        </tr>
                        <th>사과</th>
                        <tr> 
                            <td><img src="https://via.placeholder.com/120x150"  onClick="location.href='fruit_view'" style="cursor: pointer;"></td>
                            <td class="second_td">
                                <a href="fruit_view"><h5>사과 1박스</h5></a> 
                                <b>25,000원</b>&nbsp;&nbsp;
                                <small>1개 구매</small></td>
                            <td class="delevery">배송완료</td>
                        </tr>
                    </table>
                </div>
                <h5>결제 정보</h5>
                    <div class="mid_box">
                        <table>
                            <tr>
                                <td>총주문금액</td>
                                <td>35,420원</td>
                            </tr>
                            <tr>
                                <td>상품할인</td>
                                <td>0원</td>
                            </tr>
                            <tr>
                                <td>적립금 사용</td>
                                <td>- 3,364원</td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>2500원</td>
                            </tr>
                            <tr>
                                <td>결제금액</td>
                                <td>31,408원</td>
                            </tr>
                            <tr>
                                <td>적립금액</td>
                                <td>159원</td>
                            </tr>
                            <tr>
                                <td>결제방법</td>
                                <td>네이버페이</td>
                            </tr>
                        </table>
                    </div>
                <h5>주문 정보</h5>
                    <div class="mid_box">
                        <table>
                            <tr>
                                <td>주문번호</td>
                                <td>165456412154</td>
                            </tr>
                            <tr>
                                <td>주문자명</td>
                                <td>강이린</td>
                            </tr>
                            <tr>
                                <td>보내시는분</td>
                                <td>강이린</td>
                            </tr>
                            <tr>
                                <td>결제일시</td>
                                <td>2020-12-22</td>
                            </tr>
                            <tr>
                                <td>주문 처리상태</td>
                                <td>배송완료</td>
                            </tr>
                        </table>
                    </div>
                <h5>배송 정보</h5>
                    <div class="mid_box">
                        <table>
                            <tr>
                                <td>받는 분</td>
                                <td>강이린</td>
                            </tr>
                            <tr>
                                <td>받는 분 핸드폰</td>
                                <td>010-2222-4444</td>
                            </tr>
                            <tr>
                                <td>우편번호</td>
                                <td>01515</td>
                            </tr>
                            <tr>
                                <td>주소</td>
                                <td>서울시 노원구 상계동</td>
                            </tr>
                        </table>
                    </div>
               
                    <div id="btn_box">
                            <input type="button" value="뒤로가기"  onclick="location.href='manager_main'">
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