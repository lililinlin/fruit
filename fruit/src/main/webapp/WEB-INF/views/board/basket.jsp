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

/* main */
        #main_basket{        /* 메인 감싼 div */
            margin: 0 auto;
            width: 1200px;
            padding-left: 50px;
        }
        #main_basket h1{     /* 장바구니 글씨 속성 */
            text-align: center;
            padding: 20px 0px 20px 0;
        }
        th{
            height: 100px;
            border: none;
            padding-left: 55px;
        }
        #main_basket table{
            /* margin-left: 80px; */
        }
        #main_basket tr{
            font-size: 22px;
            border-bottom: 1px solid rgb(211, 211, 211);
        }
        #main_basket td{
            padding: 30px 50px 30px 50px;
        }
        #main_left{
            margin-left: 500px;
            width: 1000px;
            float: left;
            height: 800px;
        }
        .td_delete{width: 100px;}
        .td_img{width: 250px; }
        .td_name{width: 400px;}
        .td_price{width: 150px;}
        .td_count{width: 150px;}
        #chebox_bottom{
            padding-bottom: 20px;
            border-bottom: 1px solid #4eac87;
        }
        #buy{
            width: 150px;
            height: 60px;
            margin: 30px 0 100px 980px;
        }
        #main_basket tr:nth-child(2n+1){
            background-color: rgb(243, 243, 243);
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

    <div id="main_basket">
        <br><br>
        <h1><b>장바구니</b></h1><br>
                <div id="chebox_bottom"></div>
                <table> 
                       <th>이미지</th>
                       <th>과일이름</th>
                       <th>가격</th>
                       <th>수량</th>
                       <th>주문여부</th>
                    <tr>
                        <td class="td_img"><img src="https://via.placeholder.com/100x120"></td>
                        <td class="td_name"><h5>두리안</h5></td>
                        <td class="td_count">2</td>
                        <td class="td_price">40000</td>
                        <td class="td_delete"><input type="button" class="btn btn-warning" style="color: white; width: 90px; height: 50px;" value="삭제"></td>
                    </tr>
                    <tr>
                        <td class="td_img"><img src="https://via.placeholder.com/100x120"></td>
                        <td class="td_name"><h5>샤인머스켓</h5></td>
                        <td class="td_count">1</td>
                        <td class="td_price">8000</td>
                        <td class="td_delete"><input type="button" class="btn btn-warning" style="color: white; width: 90px; height: 50px;" value="삭제"></td>
                    </tr>
                    <tr>
                        <td class="td_img"><img src="https://via.placeholder.com/100x120"></td>
                        <td class="td_name"><h5>토마토</h5></td>
                        <td class="td_count">1</td>
                        <td class="td_price">5000</td>
                        <td class="td_delete"><input type="button" class="btn btn-warning" style="color: white; width: 90px; height: 50px;" value="삭제"></td>
                    </tr>
                </table>
                <input id="buy" type="button" class="btn btn-success" onClick="location.href='buy'" value="주문하기">
            
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

</html>