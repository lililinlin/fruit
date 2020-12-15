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
    <title>회사소개</title>
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
		#main_wrapper{
			width:2000px;
			margin:0 auto;
		}
		.main_header_image{
			margin-top:20px;
			width:2000px;
			height:400px;
		}
		.main_header{
			width:1200px;
			margin:0 auto;
		}
		.main_header p{
			 margin-left:110px; 
		}
		.main_header h3{
			text-align:center;
			margin-top:40px;
			margin-bottom:40px;
		}
		#Introduce_li{
			width:1200px;
			margin:0 auto;
		}
		#Introduce_li li{
			display:flex;
			height:200px;
			list-style-type: none;
			margin-left:80px;
		}
		#Introduce_li li h4{
			color: #4eac87;
		}
		
		#Introduce_li li h4,p{
			margin-left:30px;
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
    	<div id = "main_wrapper">
	    	<img src="https://via.placeholder.com/2000x400" class = "main_header_image">
	    	<div class = "main_header">
	    		<h3>푸릇츠의 시작</h3>
	    		<p>이 세상에는 참 다양한 푸드마켓이 있습니다. 하지만 우리와 꼭 맞는 마음을 가진 푸드마켓을 찾기란 쉽지 않습니다. 그렇다면 우리가 직접 만들어보면<br>
	    		어떨까? 2020년 푸릇츠는 그렇게 시작되었습니다.<br><br>
	    		맛있는 음식이 삶의 가장 큰 즐거움이라 믿는 사람들이 뜻을 합쳤죠. 푸릇츠의 팀원들은 이미 팀을 꾸리기 전부터 좋은 재료를 위해서라면 해외 직구, 백화<br>
	    		점,동네 마트,재래 시장, 더 나아가 전국 방방곡곡의 산지를 찾아 다니며 품질가 가격을 비교하던 깐깐한 소비자였습니다. 이렇게 찾아낸 훌륭한 생산자<br>
	    		와 최상의 먹거리들을 나와 내 가족만 알고 있기에는 너무 아쉬웠습니다.<br><br>
	    		비싼 식자재만이 좋은 음식일 것이라고 막연하게 생각하고 있는 소비자에게는 진짜 맛을 소개해드리고 싶었고,뚝심 하나로 산골 오지에서 수십 년간 묵<br>
	    		묵히 장을 담그는 명인, 시들어서 버릴지언정 무농약을 고집하는 농부에게는 안정적인 판매 활로를 찾아드리고 싶었습니다. 생산자와 소비자, 판매자까<br>
	    		지 모두 행복하고 맛있는 삶을 살 수 있도록 푸릇츠는 오늘도 열심히 발로 뛰며 고민합니다.</p>
	    	</div>
	    	<img src="https://via.placeholder.com/2000x400" class = "main_header_image">
	    	<div class = "main_header">
		    	<h3>푸릇츠의 믿음, 그리고 지켜야 할 가치</h3>
		    	<p>시작은 단순했지만 고민은 깊었습니다. 직원이 아닌 한 사람의 고객으로서도 오래도록 사랑할 수 있는 서비스를 만들고자 했기에,상품을 컴토할 때 '잘<br>
		    	팔릴까'보다는 '내가 사고 싶은지'를 먼저 물었고,'많이 팔릴지'보다는 '많이 팔려야 마땅한지'를 고민했고,단기적으로 이익을 추구하기보다는 장기적<br>
		    	으로 생산자와 소비자 모두에게 옳은 일을 하기 위해 치열하게 고민하고 노력해왔습니다.<br><br>
		    	그 과정에서 컬리가 꼭 지키고자 했던 가치들을 공유합니다.이 가치들은 지금까지 그래왔듯 앞으로도 푸릇츠가 성장하는 과정에서 방향을 잃지 않도록 길<br>
		    	을 밝혀주는 등대의 역할을 해줄 것이며, 동시에 푸릇츠의 파트너인 생산자,소비자,그리고 주주 여러분께 드리는 약속이기도 합니다.</p>
	    	</div><br><br>
	    	<div id="Introduce_li">
				<ul>
					<li>
						<img src="images/footer_fruit_li.jpg" width="364px" height="200px">
						<div>
							<h4>1. 나와 내 가족이 사고 싶은 상품을 판매합니다.</h4><br>
							<p>푸릇츠는 미각적,심미적으로 만족감을 주면서 사람의 몸에 이로운 상품이 우리의 삶까지<br><br>
							변화시킬 수 있다고 믿습니다.내가 먹고 쓰는 것이 곧 '나'이니까요.안정성,맛,상업성 등<br><br>
							여러 면에서 마족스러울 만한,최상의 상품을 고르기 위해 직접 먹어보고 사용해보며 여러<br><br>
							차례에 걸쳐 꼼꼼하게 검증합니다.
							</p>
						</div>
					</li><br><br><br>
					<li>
						<img src="images/footer_fruit_li2.jpg" width="364px" height="200px">
						<div>
							<h4>2. 물류 혁신을 통해 최상의 품질로 전해드립니다.</h4><br>
							<p>오늘 주문하면 내일 아침 도착하는 푸릇츠배송은 물류의 혁신이 없었다면 불가능한 일이<br><br>
							었죠.푸릇츠배송을 포함한 Fruits Solution은 산지에서 식탁까지의 시간을 줄이고,<br><br>
							온도를 제어해 상품의 가치를 극대화합니다.좋은 상품을 가장 좋은 상ㅌ로 고객님께 전해<br><br>
							드리는 것.푸릇츠가 배송 시간부터	포장재까지 물류의 모든 것을 혁신한 이유이자,푸릇츠<br><br>
							의 물류가 가지는 가치입니다
							</p>
						</div>
					</li><br><br><br><br>
					<li>
						<img src="images/footer_fruit_li3.jpg" width="364px" height="200px">
						<div>
							<h4>3. 고객의 행복을 먼저 생각합니다.</h4><br>
							<p>푸릇츠는 오늘의 만족을 넘어 고객님의 삶 속에서 행복을 드리는 서비스로 남기를 바랍<br><br>
							니다.그래서 오늘의 회사를 위한 일보다 장기적으로 소비자에게 옳은 일을 합니다.고객만족<br><br>
							보장제도는 고객님의 현재는 물론 매래까지도 세심하게 케어하고 싶은 푸릇츠의 의지입니다.<br><br>
							</p>
						</div>
					</li><br><br><br>
					
				</ul>
	    	</div>
    	</div>
    </main>
    <br><br><br><hr>
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