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
    <title>게시판관리</title>
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
         a:hover { text-decoration: none; color: black;}
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
             margin-left:210px; 
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
        .submenu1{/* 첫번째 서브메뉴 숨김으로 표시 */
     		display:none;
     		text-align: center;
     		padding-right:20px;
     	}
     	.submenu2{/* 두번째 서브메뉴 숨김으로 표시 */
     		display:none;
     		text-align: center;
     		padding-right:20px;
     	}
     	.submenu3 small{/* 세번째 서브메뉴 숨김으로 표시 */
     		padding-left:30px;
     	}

        /* 오른쪽 */
        #main_right{ /*오른쪽 전체 감싼 div*/
            margin-left: 20px;
            float: right;
            width: 850px;
            height: 800px;
        }
        #main_right table input{
        	border:none;
        	width: 75px;
            text-align: center;
            background-color:transparent;
            font-weight: bold;
        }
        
        #main_table{ /* 메인 테이블 감싼 div */
            border-top: 2px solid  #00af85;
            margin-top: 30px;
            padding-top: 10px;
        }
        #main_table table{ /* 테이블 속성 */
            width: 850px;
            text-align: center;
        }
        #main_table th{
            font-size: smaller;
            font-weight: normal;
            text-align: center;
            height: 50px;
            padding-bottom: 6px;
        }
        #main_table td{
            height: 50px;
            border-bottom: 1px solid rgb(224, 224, 224);
            font-size: small;
        }
        #main_table tr:nth-child(2n+1){
            background-color: rgb(240, 240, 240);
        }
        .main_title{ /* 제목 td칸 속성*/
            text-align: center;
            width: 400px;
        }
        .main_day{ /* 작성일 */
            color: gray;
        }
        #btn_top{ /* 버튼 겉 div */
        	margin: 10px 0 20px 0;
        }
        #top_button{ /* 답변 없는 문의 버튼*/
            width: 190px;
            height: 40px;
            border: 1px solid #00af85;
            background-color: #00af85; 
            color: #fff;
        }
        .main_answer{
            color: red;
        }
        /* 스크롤시 자동으로 따라오는 테이블바 */
        #side_table{
        	margin-top:100px;
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
		#footer{
			width:1200px;
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
               yPosition = $win.scrollTop() - 100; //이부분을 조정해서 화면에 보이도록 맞추세요 
               if (yPosition < 0) { 
                  yPosition = 0; 
               } 
               $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
         }); 
      }); 
   </script>
   <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
		<script type="text/javascript">
			$(function(){
			  $("#mainmenu1").click(function(){
				  status=$(".submenu1").css("display");
				  if(status == "none"){
					  $(".submenu1").show();
					  $(".submenu2").hide();
					  $(".submenu3").hide();
				  }
				  else{
					  $(".submenu1").hide();
				  }
			    
			  });
			  $("#mainmenu2").click(function(){
				  status=$(".submenu2").css("display");
				  if(status == "none"){
					  $(".submenu1").hide();
					  $(".submenu2").show();
					  $(".submenu3").hide();
				  }
				  else{
					  $(".submenu2").hide();
				  }
			    
			  });
			  $("#mainmenu3").click(function(){
				  status=$(".submenu3").css("display");
				  if(status == "none"){
					  $(".submenu1").hide();
					  $(".submenu2").hide();
					  $(".submenu3").show();
				  }
				  else{
					  $(".submenu3").hide();
				  }
			    
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
    
	<div id="main_wrapper">
            <div id="main_left">
                <h3><b>게시판관리</b></h3>
                <table>
                    <tr onClick="location.href='manager_main'">
                    	<td><small>메인페이지</small></td><td>></td>
                    </tr>
                    <tr id="mainmenu1">
                    	<td><small>회원관리</small></td><td>></td>
                    </tr>
                    <tr>
                    	<td class="submenu1" onClick="location.href='manager_member'"><small>회원목록</small></td><td class="submenu1"></td>
                    </tr>
                    <tr>
                    	<td class="submenu1" onClick="location.href='manager_secession'"><small>탈퇴회원</small></td><td class="submenu1"></td>
                    </tr>
                    <tr id="mainmenu2">
                    	<td><small>상품관리</small></td><td>></td>
                    </tr>
                    <tr>
                    	<td class="submenu2" onClick="location.href='goods_list'"><small>상품목록</small></td><td class="submenu2"></td>
                    </tr>
                    <tr>
                    	<td class="submenu2" onClick="location.href='goods_register'"><small>상품등록</small></td><td class="submenu2"></td>
                    </tr>
                     <tr onclick="location.href='order_management'">
                    	<td><small>주문관리</small></td><td>></td>
                    </tr>
                    <tr id="mainmenu3">
                    	<td><small>게시판관리</small></td><td>></td>
                    </tr>
                    <tr>
                    <tr><td class="submenu3" onClick="location.href='notice_management'"><small>공지사항</small></td><td class="submenu3"></td></tr>
                    	<tr><td class="submenu3" onClick="location.href='notice_common_question'"><small>자주묻는질문</small></td><td class="submenu3"></td></tr>
                    	<tr><td class="submenu3" onClick="location.href='notice_onetoone_question'"><small>1:1문의</small></td><td class="submenu3"></td></tr>
                    	<tr><td class="submenu3" onClick="location.href='exchange_refund'"><small>교환 / 환불</small></td><td class="submenu3"></td></tr>
                    </tr>
                </table>
            </div>

            <div id="main_right">
            <h4><b>1:1 문의 관리</b></h4>
                <div id="main_table">
                    <div id="btn_top">
                        <input id="top_button" type="button" value="답변 없는 문의만 보기"> 
                    </div>
                    <table>
                        <th>번호</th>
                        <th>유형</th>
                        <th>제목</th>
                        <th>작성자</th>
                        <th>답변상태</th>
                        <th>작성일</th>
                        <tr><!-- 스크립트문은 body 끝나는 부분에 작성 / 가져올땐 for문으로 가져오기   -->
                            <td>10</td>
                            <td>배송문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">연휴기간 배송관련 문의 남깁니다.</a></td>
                            <td>강이린</td>
                            <%
                            	String str="test"+1;
                            %>
                            <td><input type="text" name="test" id="<%= str %>"  value="미등록" ></td>
                            <td class="main_day">2020-12-23</td>
                        </tr>
                        <tr>
                            <td>9</td>
                            <td>배송문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">연휴기간 배송관련 문의 남깁니다.</a></td>
                            <td>강이린</td>
                            <td><input type="text" name="test"  id="test2"   value="등록완료"></td>
                            <td class="main_day">2020-12-23</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>배송문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">연휴기간 배송관련 문의 남깁니다.</a></td>
                            <td>강이린</td>
                            <td><input type="text" name="test"  id="test3" value="미등록"></td>
                            <td class="main_day">2020-12-23</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>배송문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">연휴기간 배송관련 문의 남깁니다.</a></td>
                            <td>강이린</td>
                            <td><input type="text" name="test" id="test4"   value="미등록"></td>
                            <td class="main_day">2020-12-23</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>상품문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">두리안 언제 입고 되나요?</a></td>
                            <td>이정현</td>
                            <td><input type="text" name="test" id="test5"   value="등록완료" ></td>
                            <td class="main_day">2020-12-20</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>상품문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">두리안 언제 입고 되나요?</a></td>
                            <td>이정현</td>
                            <td><input type="text" name="test"  id="test6"  value="등록완료"  ></td>
                            <td class="main_day">2020-12-20</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>상품문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">두리안 언제 입고 되나요?</a></td>
                            <td>이정현</td>
                            <td><input type="text" name="test"  id="test7"   value="등록완료" ></td>
                            <td class="main_day">2020-12-20</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>상품문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">두리안 언제 입고 되나요?</a></td>
                            <td>이정현</td>
                            <td><input type="text" name="test" id="test8"  value="미등록" ></td>
                            <td class="main_day">2020-12-20</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>상품문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">두리안 언제 입고 되나요?</a></td>
                            <td>이정현</td>
                            <td><input type="text" name="test" id="test9"  value="등록완료" ></td>
                            <td class="main_day">2020-12-20</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td>주문/결제문의</td>
                            <td class="main_title"><a href="notice_onetoone_view">중복결제가 된 것 같습니다. 취소 부탁드려요</a></td>
                            <td>사용자</td>
                           <td><input type="text" name="test" id="test10"  value="등록완료" ></td>
                            <td class="main_day">2020-12-11</td>
                        </tr>

                    </table>
    
                </div>
            </div>
            
    </div>
    <div id="footer">
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
    </div>
</body>
<script>
	$(function(){    
	    if($('#test1').val()=='미등록'){
	     $('#test1').css('color', '#f82a2aa3');
	    } 
	    else if($('#test1').val()=='등록완료'){
	        $('#test1').css('color', '#199894b3');
		}
	});
	$(function(){ 
		if($('#test2').val()=='미등록'){ 
		    $('#test2').css('color', '#f82a2aa3');
		}
		 else if($('#test2').val()=='등록완료'){
		$('#test2').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test3').val()=='미등록'){
		    $('#test3').css('color', '#f82a2aa3');
		}
		 else if($('#test3').val()=='등록완료'){
		$('#test3').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test4').val()=='미등록'){
		    $('#test4').css('color', '#f82a2aa3');
		}
		 else if($('#test4').val()=='등록완료'){
		$('#test4').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test5').val()=='미등록'){
		    $('#test5').css('color', '#f82a2aa3');
		}
		 else if($('#test5').val()=='등록완료'){
		$('#test5').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test6').val()=='미등록'){
		    $('#test6').css('color', '#f82a2aa3');
		}
		 else if($('#test6').val()=='등록완료'){
		$('#test6').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test7').val()=='미등록'){
		    $('#test7').css('color', '#f82a2aa3');
		}
		 else if($('#test7').val()=='등록완료'){
		$('#test7').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test8').val()=='미등록'){
		    $('#test8').css('color', '#f82a2aa3');
		}
		 else if($('#test8').val()=='등록완료'){
		$('#test8').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test9').val()=='미등록'){
		    $('#test9').css('color', '#f82a2aa3');
		}
		 else if($('#test9').val()=='등록완료'){
		$('#test9').css('color', '#199894b3');
		 }
		});
	$(function(){ 
		if($('#test10').val()=='미등록'){
		    $('#test10').css('color', '#f82a2aa3');
		}
		 else if($('#test10').val()=='등록완료'){
		$('#test10').css('color', '#199894b3');
		 }
		});
</script>
</html>