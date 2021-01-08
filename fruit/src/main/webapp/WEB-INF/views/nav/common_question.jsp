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
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <title>고객센터</title>
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
        #basket_img{
        	height:35px;
        }
/* main */
		main{
			width:1200px;
			margin-top:30px;
			margin:0 auto;
		}
		#main_wrapper{ /*왼쪽 오른쪽 묶은 div*/
			width:1200px;
			display:flex;
			margin:0 auto;
			margin: 40px 0 0 50px;
		}
		#left_menu{ /*왼쪽 div*/
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
		#content{ /*메인 div*/
			margin-left:40px;
            width: 900px;
		}
		#content h4{
			padding-bottom:30px;
			border-bottom:2px solid rgb(1, 114, 18);
		}
		#content_table th{
			border-bottom:1px solid rgb(1, 114, 18);
		}
		#content_table{
			font-size:13px;
		}
		#content_table td{
			width:800px;
			height:55px;
		}
        #hideTr1{
        	display:none;
        }
        #hideTr2{
        	display:none;
        }
        #hideTr3{
        	display:none;
        }
        #hideTr4{
        	display:none;
        }
        #hideTr5{
        	display:none;
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
		/* function showTr(){
				if($('#hideTr').css('display','none')){
					$('#hideTr').css('display','block');
				} else{
					$('#hideTr').css('display','none');
				}
				
			} */
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
    <main>
    	<div id="main_wrapper">
    		<div id=left_menu>
    			<h3><b>고객센터</b></h3><br><br>
    			<ul>
    				<li onclick="location.href='service_center'">공지사항 </li>
    				<li onclick="location.href='common_question'">자주하는질문 </li>
    				<li onclick="location.href='onetoone_question'">1:1문의하기 </li>
    			</ul>
    		</div>
    		<script type="text/javascript"> $(document).ready(function () {
        		// 페이지 document 로딩 완료 후 스크립트 실행
		        	$("#viewhidden1").click(function () { 
		            	status = $("#hideTr1").css("display"); 
		            	if (status == "none") { 
		                	$("#hideTr1").show();
		                	$("#hideTr2").hide();
		                	$("#hideTr3").hide(); 
		                	$("#hideTr4").hide(); 
		                	$("#hideTr5").hide();  
		                
		            	} else { 
		                	$("#hideTr1").hide(); 
		                } 
		            });
		        	$("#viewhidden2").click(function () { 
		            	status = $("#hideTr2").css("display"); 
		            	if (status == "none") { 
		                	$("#hideTr2").show();
		                	$("#hideTr1").hide();
		                	$("#hideTr3").hide(); 
		                	$("#hideTr4").hide(); 
		                	$("#hideTr5").hide();  
		                
		            	} else { 
		                	$("#hideTr2").hide(); 
		                } 
		            });
		        	$("#viewhidden3").click(function () { 
		            	status = $("#hideTr3").css("display"); 
		            	if (status == "none") { 
		                	$("#hideTr3").show();
		                	$("#hideTr1").hide();
		                	$("#hideTr2").hide(); 
		                	$("#hideTr4").hide(); 
		                	$("#hideTr5").hide();  
		                
		            	} else { 
		                	$("#hideTr3").hide(); 
		                } 
		            });
		        	$("#viewhidden4").click(function () { 
		            	status = $("#hideTr4").css("display"); 
		            	if (status == "none") { 
		                	$("#hideTr4").show();
		                	$("#hideTr1").hide();
		                	$("#hideTr2").hide(); 
		                	$("#hideTr3").hide(); 
		                	$("#hideTr5").hide();  
		                
		            	} else { 
		                	$("#hideTr4").hide(); 
		                } 
		            });
		        	$("#viewhidden5").click(function () { 
		            	status = $("#hideTr5").css("display"); 
		            	if (status == "none") { 
		                	$("#hideTr5").show();
		                	$("#hideTr1").hide();
		                	$("#hideTr2").hide(); 
		                	$("#hideTr3").hide(); 
		                	$("#hideTr4").hide();  
		                
		            	} else { 
		                	$("#hideTr5").hide(); 
		                } 
		            });
        		}); 
    		</script>
    		<div id="content">
    			<h4><b>자주 묻는 질문</b></h4>
    			<table class="table" id="content_table">
					<thead>
						<tr>
							<th scope="col" width="10%" style="padding-left: 20px;">번호</th>
							<th scope="col" width="55%" style="padding-left: 180px;">제목</th>
							<th scope="col" width="10%" style="padding-left: 12px;">작성자</th>
							<th scope="col" width="15%" style="padding-left: 28px;">작성일</th>
							<th scope="col" width="10%" style="padding-left: 5px;">조회수</th>
						</tr>
					</thead>
				    <tbody>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;1</td>
				    		<td id="viewhidden1" style="cursor: pointer;">[가격인상공지][라이스몬]아침앤쌀 딸기 외 3건(2020.12.11~)</td>
				    		<td>강이린</td>
				    		<td>2020-12-08</td>
				    		<td>400</td>
						</tr>
						<tr id="hideTr1">
					    	<td colspan="5">viewhidden1</td>
						</tr>
				    </tbody>
				    <tbody>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;1</td>
				    		<td id="viewhidden2" style="cursor: pointer;">[가격인상공지]</td>
				    		<td>이정현</td>
				    		<td>2020-12-08</td>
				    		<td>400</td>
						</tr>
						<tr id="hideTr2">
					    	<td colspan="5">viewhidden1</td>
						</tr>
				    </tbody>
				    <tbody>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;1</td>
				    		<td id="viewhidden3" style="cursor: pointer;">[라이스몬]</td>
				    		<td>강이린</td>
				    		<td>2020-12-08</td>
				    		<td>400</td>
						</tr>
						<tr id="hideTr3">
					    	<td colspan="5">viewhidden1</td>
						</tr>
				    </tbody>
				    <tbody>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;1</td>
				    		<td id="viewhidden4" style="cursor: pointer;">아침앤쌀 딸기 외 3건</td>
				    		<td>이정현</td>
				    		<td>2020-12-08</td>
				    		<td>400</td>
						</tr>
						<tr id="hideTr4">
					    	<td colspan="5">viewhidden1</td>
						</tr>
				    </tbody>
				     <tbody>
						<tr>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;1</td>
				    		<td id="viewhidden5" style="cursor: pointer;">(2020.12.11~)</td>
				    		<td>이정현</td>
				    		<td>2020-12-08</td>
				    		<td>400</td>
						</tr>
						<tr id="hideTr5">
					    	<td colspan="5">viewhidden1</td>
						</tr>
				    </tbody>
				</table>
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