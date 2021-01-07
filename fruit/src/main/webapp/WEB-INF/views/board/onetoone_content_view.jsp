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
    <title>고객센터-1:1문의</title>
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
		main{
			width:1200px;
			margin-top:30px;
			margin:0 auto;
		}
	/*왼쪽 오른쪽 묶은 div*/
		#main_wrapper{ 
			width:1200px;
			display:flex;
			margin:0 auto;
			margin: 40px 0 0 50px;
		}
	/*왼쪽 div*/
		#left_menu{ 
			height:205px;
			width:200px;
		}
		#left_menu ul{
			width:100%;
			margin-top:-16px;
			margin-left:0;
			height:152px;
		}
		#left_menu li{
			border:1px solid #e3e3e3;
			font-size:12px;
			padding-left:20px;
			height:50px;
			line-height:50px;
			list-style-type:none;
			vertical-align: middle;
		}
		#left_menu li:hover{
			background-color:rgb(251, 249, 249);
			color:#00af85;
			cursor: pointer;
		}
	/* 오른쪽 */
		#content{ /* 메인 전체 묶은 div */
            margin:0 0 50px 40px;
            width: 900px;
            border-bottom:1px solid rgb(150, 147, 147);
		}
		#content h4{ /* 메인 큰 글씨 */
			padding-bottom:30px;
			border-bottom:2px solid #00af85;
		}
		#main_content_box{ /* 테이블 버튼 묶은 div */
			padding-top:50px;
			width:805px;
			margin:0 0 80px 30px;
		}
        #content table tr:nth-child(2n+1){
            background-color: rgb(246, 246, 246);
        }
        #content table td{
            padding-left: 40px;
            height: 70px;
        }
        #main_content{
            height: 200px;
            width: 150px;
        }
        #select{
        	color:#00af85;
        }	
        #main_content2{
            padding: 50px 50px 50px 0;
        }
        #btn_box{ /*글작성 버튼 감싼 div*/
            text-align: center;
            margin: 30px 0 30px 0;
        }
        #delete{ /* 삭제버튼 */
 			width: 200px;
            height: 40px;
            border: 1px solid #00af85;
	        background-color:  #fff;
	        color:  #00af85;
	        margin:30px 10px 0 0;
        }
        #modify{ /* 수정버튼 */
       		width: 200px;
            height: 40px;
           border: 1px solid #00af85;
            background-color: #00af85; 
            color: #fff;
            margin-top:30px;
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
    
    <main>
    
    	<div id="main_wrapper">
	    		<div id=left_menu>
	    			<h3><b>고객센터</b></h3><br><br>
	    			<ul>
	    				<li onclick="location.href='service_center'">공지사항</li>
	    				<li onclick="location.href='common_question'">자주하는질문</li>
	    				<li onclick="location.href='onetoone_question'">1:1문의하기</li>
	    			</ul>
	    		</div>
	    		
	    		<div id="content">
	    			<h4><b>1:1 문의 하기</b></h4>
	    			
	    			<div id="main_content_box">
			    				<table>
                                    <tr>
                                        <td>문의유형</td>
                                        <td id="select">배송문의</td>
                                    </tr>
                                    <tr>
                                        <td>아이디</td>
                                        <td>강이린</td>
                                    </tr>
                                    <tr>
                                        <td>휴대폰</td>
                                        <td>010-2222-2222</td>
                                    </tr>
                                    <tr>
                                        <td>제목</td>
                                        <td>결제가 안됩니다.</td>
                                    </tr>
                                    <tr>
                                        <td id="main_content">내용</td>
                                        <td id="main_content2">
                                            어제부터 오늘까지 결제가 안되네요.<br>
                                            물건이 없는건지 <br>시스템에 문제가 있는건지
                                            확인부탁드립니다. 어제부터 오늘까지 결제가 안되네요.<br>
                                            물건이 없는건지 시스템에 문제가 있는건지
                                            확인부탁드립니다. 어제부터 오늘까지 결제가 안되네요.
                                            물건이 없는건지 시스템에 문제가 있는건지
                                            확인부탁드립니다.<br>
                                            어제부터 오늘까지 결제가 안되네요.<br>
                                            물건이 없는건지 시스템에 문제가 있는건지<br>
                                            확인부탁드립니다.
                                            어제부터 오늘까지 결제가 안되네요.
                                            물건이 없는건지 시스템에 문제가 있는건지
                                            확인부탁드립니다.<br>
                                            어제부터 오늘까지 결제가 안되네요.
                                            물건이 없는건지 시스템에 문제가 있는건지
                                            확인부탁드립니다.
                                        </td>
                                    </tr>
                                </table>
 
				                 <div id = "btn_box">				                    
				                    <input type="button" id="delete" onClick="location.href='onetoone_modify'" value="수정">
									<input type="button" id="modify" onClick="location.href='onetoone_view_delete'" value="삭제">
				                 </div>
	                </div>
	    		</div>
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