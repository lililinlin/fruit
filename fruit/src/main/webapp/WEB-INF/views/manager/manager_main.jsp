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
    <title>관리자메인</title>
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
		.main_wrapper{
			width:1200px;
			margin:0 auto;
			display:flex;
			margin-top:50px;
		}
		#manager_profile{/* 왼쪽 admin관리자 프로필 정보 */
			border:1px solid gray;
			margin-right:20px;
			width:200px;
			height:100px;
			text-align: center;
		}
		#manager_profile #button1{/* admin관리자 내정보 버튼 */
			width:100px;
			height:40px;
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
		}
		#manager_profile #button2{/* admin관리자 로그아웃 버튼 */
			width:100px;
			height:40px;
			background-color:white;
			color:#00af85;
			border:1px solid #00af85;
		}
		.site_info_top{/* 상단에 있는 테이블(today현황, 미처리 항목) */
			text-align:center;
			width:450px;
			height:300px;
			border-spacing:4px;
			border-collapse: separate;
		}
        .site_info_top td{ /* today , 미처리 전체 td 넓이*/
            width: 200px;
        }
		.site_info_top tr, .site_info_top td, .site_info_top th{
			border:1px solid gray;
		}
		.site_info_top th{
			background-color:#f0f0f0;
			color:black;
		}
		#site_info_bottom1{/* 하단에 있는 테이블(최근 후기) */
			text-align:center;
			margin-bottom:100px;
			width:580px;
			height:400px;
		}
		#site_info_bottom1 tr:nth-child(2n){
			background-color:#f0f0f0;
		}
		#site_info_bottom2{/* 하단에 있는 테이블(최근주문목록) */
			text-align:center;
			margin-left:30px;
			width:580px;
			height:400px;
            color: black;
		}
		#site_info_bottom2 tr:nth-child(2n){
			background-color:#f0f0f0;
		}
        #site_info_bottom1 a:hover{ /* 최근 후기 a 태그 hover */
            color: #00af85;
        }
        #site_info_bottom2 a:hover{ /* 최근 주문 목록 a 태그 hover */
            color: #00af85;
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
    <main>
    	<div class="main_wrapper">
    		<table id="manager_profile">
    			<tr>
    				<td colspan="2" style="height: 60px"><h3>강이린님</h3></td>
    			</tr>
    			<tr>
    				<td><input type="button" id="button1" value="내정보" onclick="location.href='manager_info'"></td>
    				<td><input type="button" id="button2" value="로그아웃" onclick="location.href='home'" ></td>
    			</tr>
    		</table>
    		<table class="site_info_top">
    			<tr>
    				<td colspan="2"><h3>today현황</h3></td>
    			</tr>
    			<tr>
    				<th>회원가입 수</th>
    				<th>탈퇴회원 수</th>
    			</tr>
    			<tr>
    				<td>0</td>
    				<td>0</td>	
    			</tr>
    			<tr>
    				<th>상품등록 수</th>
    				<th>삼품주문 수</th>
    			</tr>
    			<tr>
    				<td>0</td>
    				<td>0</td>	
    			</tr>
    		</table>
    		<table class="site_info_top">
    			<tr>
    				<td colspan="2"><h3>미처리항목</h3></td>
    			</tr>
    			<tr>
    				<th>1:1문의</th>
    				<th>교환/환불신청</th>
    			</tr>
    			<tr>
    				<td>0</td>
    				<td>0</td>	
    			</tr>
    			<tr>
                    <th>상품문의</th>
    			</tr>
    			<tr>
                    <td>0</td>
    			</tr>
    		</table>
    	</div>
    	<div class="main_wrapper">
    		<table id="site_info_bottom1">
    			<tr>
    				<th colspan="3"><h3><a href="review_management">최근후기&nbsp; ></a></h3></th>
    			</tr>
    			<tr>
    				<th width="20%">상품명</th>
    				<th width="60%">제목</th>
    				<th width="20%">날짜</th>
    			</tr>
    			<tr>
    				<td>사과</td>
    				<td><a href="review_content_view">아주 맛있군요</a></td>
    				<td>2020.12.10</td>
    			</tr>
    			<tr>
    				<td>딸기</td>
    				<td><a href="review_content_view">겨울 딸기 달아요 ^^</a></td>
    				<td>2020.12.9</td>
    			</tr>
    			<tr>
    				<td>복숭아</td>
    				<td><a href="review_content_view">굿굿</a></td>
    				<td>2020.12.9</td>
    			</tr>
    			<tr>
    				<td>두리안</td>
    				<td><a href="review_content_view">배송빨라서 좋아요~</a></td>
    				<td>2020.12.8</td>
    			</tr>
    		</table>
    		<table id="site_info_bottom2">
    			<tr>
    				<th colspan="4"><h3>최근주문목록</h3></th>
    			</tr>
    			<tr>
    				<th width="25%">주문번호</th>
    				<th width="25%">금액</th>
    				<th width="25%">날짜</th>
    				<th width="25%">결제내역</th>
    			</tr>
    			<tr>
    				<td><a href="manager_orderlist">2015245654</a></td>
    				<td>15,000원</td>
    				<td>2020.12.16</td>
    				<td>결제 완료</td>
    			</tr>
    			<tr>
    				<td><a href="manager_orderlist">2015245653</a></td>
    				<td>3,000원</td>
    				<td>2020.12.15</td>
    				<td>미 결제</td>
    			</tr>
    			<tr>
    				<td><a href="manager_orderlist">2015245652</a></td>
    				<td>6,000원</td>
    				<td>2020.12.14</td>
    				<td>결제 완료</td>
    			</tr>
    			<tr>
    				<td><a href="manager_orderlist">2015245651</a></td>
    				<td>28,000원</td>
    				<td>2020.12.14</td>
    				<td>결제 완료</td>
    			</tr>
    		</table>
    	</div>
    </main>
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