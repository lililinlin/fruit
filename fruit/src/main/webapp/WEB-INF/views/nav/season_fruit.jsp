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
    <title>제철과일</title>
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
		 #content{ /* 메인을 감싼 div */
            width: 1000px;
            margin: 0 auto;
            padding-top: 50px;
        } 
        #content td{ 
            width: 300px;
            padding-right: 30px;
            padding-bottom: 10px;
        }
        .scale { /* 과일 이미지 감싼 div */
            width:300px; 
            height:400px; 
            overflow:hidden; 
            margin:0 auto
            }
        .scale img { 
            width:300px; 
            height:400px;
            transform:scale(1); 
            transition:transform 0.5s linear;
        }
        .scale:hover img { 
            transform:scale(1.1); 
            }
        .img_bottom_font{ /* 사진 밑 과일 이름 */
            color: rgb(63, 63, 63); 
            padding-left: 15px;
            text-align: left;
        }

        .img_bottom_price{  /* 사진 밑 가격 */
            color:  rgb(1, 114, 18);
            padding: 0 0 100px 15px;
            text-align: left;

        }
        #price_nav{ /* 가격낮은순 | 높은순 */
            padding-left: 480px;
            cursor: pointer;
            color: rgb(99, 99, 99); 
        }
        #price_nav a:hover{
            color:  #4eac87;
        }
        #main_name h6{ /* 페이지 이름 */
            color: rgb(1, 114, 18);
            padding-left: 10px;
        }
        #main_name{
            height: 100px;
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
    
    <div id="content">
        <table>
            <tr>
                <td id="main_name"><div style="border-bottom: 1px solid rgb(1, 114, 18); width: 85px;"><h6><b>제철과일</b></h6></div></td>
                <td id="price_nav" colspan="2"><small><a style="padding-right: 10px;">가격낮은순</a>|<a style="padding-left: 10px;">가격높은순</a></small></td>
                
            </tr>
            <tr>
                <td><div class="scale"><img src="https://via.placeholder.com/300X400"  onclick="location.href='fruit_view'" style="cursor: pointer;" ></div></td>
                <td><div class="scale"><img src="https://via.placeholder.com/300X400"  onclick="location.href='fruit_view'" style="cursor: pointer;" ></div></td>
                <td><div class="scale"><img src="https://via.placeholder.com/300X400"  onclick="location.href='fruit_view'" style="cursor: pointer;" ></div></td>
            </tr>
            <tr>
                <td class="img_bottom_font"><h4><b>귤</b></h4></td>
                <td class="img_bottom_font"><h4><b>레몬</b></h4></td>
                <td class="img_bottom_font"><h4><b>용과</b></h4></td>
            </tr>
            <tr>
                <td class="img_bottom_price"><h5><b>23000원</b></h5><br><br></td>
                <td class="img_bottom_price"><h5><b>10000원</b></h5><br></td>
                <td class="img_bottom_price"><h5><b>15000원</b></h5><br></td>
            </tr>
            <tr>
                <td><div class="scale"><img src="https://via.placeholder.com/300X400"  onclick="location.href='fruit_view'" style="cursor: pointer;" ></div></td>
                <td><div class="scale"><img src="https://via.placeholder.com/300X400"  onclick="location.href='fruit_view'" style="cursor: pointer;" ></div></td>
                <td><div class="scale"><img src="https://via.placeholder.com/300X400"  onclick="location.href='fruit_view'" style="cursor: pointer;" ></div></td>
            </tr>
            <tr>
                <td class="img_bottom_font"><h4><b>귤</b></h4></td>
                <td class="img_bottom_font"><h4><b>레몬</b></h4></td>
                <td class="img_bottom_font"><h4><b>용과</b></h4></td>
            </tr>
            <tr>
                <td class="img_bottom_price"><h5><b>23000원</b></h5><br><br></td>
                <td class="img_bottom_price"><h5><b>10000원</b></h5><br></td>
                <td class="img_bottom_price"><h5><b>15000원</b></h5><br></td>
            </tr>
        </table>
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