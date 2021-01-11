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
    <title>상품보기</title>
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
    <script>
            function btn_click(str){                             
                if(str=="buy"){                                 
                    form.action="buy";      
				} else if(str=="basket"){      
					alert("장바구니에 담겼습니다.");     
                }  else {
                    //...
                }
            }
        </script>
       
    <style>

/* 전체 적용 */
         *{
              font-family: 'Noto Sans KR', sans-serif;
            /*   border: 1px solid red;  */
         }
         a{ 
             color:black;
         }
         a:hover { text-decoration: none; color:#00af85}
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
            #content{ /* 메인을 감싼 div */
                width: 1200px;
                margin: 0 auto;
                margin-top: 50px;
            }
            
            #main_img{ /* 과일 이미지 */
                float: left;
                width: 460px;
                height: 600px;
                margin: 0 40px 0 40px;
            }

            .table_menu{
                width: 120px;
            }

            .table_tr{ /* 테이블 높이 & 밑줄*/
                height: 75px;
                border-bottom: 1px solid rgb(211, 211, 211);
            }
            #count1 input{ /*판매수량 금액카운트*/
                border:none;
                background-color: white;
                width: 90px;
                height: 40px;
                text-align: center;
                font-size: 25px;
                color:  #00af85;
            }
            #count2{
            	font-size: 25px;
            }
            
            #count2 input{ /*판매수량 금액카운트*/
                border:none;
                background-color: white;
                width: 120px;
                height: 40px;
                text-align: center;
                font-size: 30px;
                font-weight:bold;
                color:  #00af85;
            }
            .bottom_content{ /* 상품상세정보 테이블 */
                width: 500px;
                text-align: center;
                border-bottom: 1px solid rgb(228, 228, 228);
            }
            #myDIV1{ /*상품 상세 정보 */
            	margin-top: 50px;
                display: "";
                width: 1200px;
                padding-left: 50px;
            }
            
            #myDIV2, #myDIV3, #myDIV4{
                display: none;
                width: 1100px;
                margin: 50px 0 100px 30px;
            }
            #myDIV3 span, #myDIV4 span{
            	padding-top:15px;
                height: 50px;
            }
           
			/* 상품후기 & 상품문의 속성 */
            .sp_num{display:inline-block; width:100px;}
            .sp_title{display:inline-block; width: 400px;}
            .sp_writer{display:inline-block; width: 150px;}
            .sp_date{display:inline-block; width: 180px;}
            .sp_hit{display:inline-block; width: 80px;}

            #review_wrapp span{
                font-size: 18px;
                margin: 100px 0 10px 10;
                
            }
            #review_wrapp div{
                border-bottom: 1px solid rgb(230, 230, 230);
            }
            #display1, #display2, #display3, #display4, #display5,#display6,#display7,#display8,#display9,#display10{
            	width:900px;
            	margin:40px 0 50px 50px;
            	display: none;
            }
            #btn_basket{  /* 장바구니 버튼 */
            margin-bottom: 10px;
            border: 1px solid #00af85;
	        background-color: #00af85; 
	        color: #fff;
           }          
           #btn_buy{  /* 구매하기 버튼 */
            margin-bottom: 10px;
            border: 1px solid #00af85;
	        background-color:  #fff;
	        color:  #00af85;
           }
            #myDIV3 input[type=button], #myDIV4 input[type=button]{
                border: 1px solid #00af85;
                background-color: #00af85; 
                color: #fff;
                float: right; 
                margin-right: 50px;
                width: 150px;
                height: 50px;
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
        footer{
        	margin-top:100px;
        }
        
          
    </style>
   
</head>
 <body onload="init();">
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
 	<script language="JavaScript">

        var sell_price;
        var amount;
        
        function init () {
            sell_price = document.form.sell_price.value;
            amount = document.form.amount.value;
            document.form.sum.value = sell_price;
            change();
        }
        
        function add () {
            hm = document.form.amount;
            sum = document.form.sum;
            hm.value ++ ;
        
            sum.value = parseInt(hm.value) * sell_price;
        }
        
        function del () {
            hm = document.form.amount;
            sum = document.form.sum;
                if (hm.value > 1) {
                    hm.value -- ;
                    sum.value = parseInt(hm.value) * sell_price;
                }
        }
        
        function change () {
            hm = document.form.amount;
            sum = document.form.sum;
        
                if (hm.value < 0) {
                    hm.value = 0;
                }
            sum.value = parseInt(hm.value) * sell_price;
        }  
  
        </script>
        <div id="content">
            <img id="main_img" src="https://via.placeholder.com/150x200">
            <h3><b>단호박 1입</b></h3><br>
            <h3 style="color: #00af85"><b>4490원</b></h3><br>
            <table>
                <tr class="table_tr">
                    <td class="table_menu">판매단위</td>
                    <td>통</td>
                </tr>
                <tr class="table_tr">
                    <td class="table_menu">원산지</td>
                    <td>국내산</td>
                </tr>
                <tr class="table_tr">
                    <td class="table_menu">택배배송</td>
                    <td>2500원</td>
                </tr>
                <tr class="table_tr">
                    <td class="table_menu">유통기한</td>
                    <td>신선식품으로 별도의 유통기한은 없으나 가급적 빠른 시일내에 드시길 바랍니다. </td>
                </tr>
                <tr class="table_tr">
                    <td class="table_menu">안내사항</td>
                    <td style="padding: 15px 0 15px 0;">-식품 특성상 중량은 3% 내외의 차이가 발생할 수 있습니다.<br>
                        -수확한지 얼마 안된 단호박으로 과육색이 다소 밝은 색일 수 있습니다.
                    </td>
                </tr>
            <form name="form" method="post">
                <tr class="table_tr">
                    <td class="table_menu">판매수량</td>
                    <td id="count1">
                        <input  type="button" value=" - " onclick="del();" style="width: 30px;">
                        <input  type=hidden name="sell_price" value="4490">
                        <input  type="text" name="amount" value="1" size="3" onchange="change();">
                        <input  type="button" value=" + " onclick="add();" style="width: 30px;">
                    </td>
                </tr>
                <tr class="table_tr">
                    <td id="count2" colspan="2" style="text-align: right;">총 상품금액<input type="text" name="sum" size="11" readonly>원</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input id="btn_buy" type="submit" value="구매하기" onclick='btn_click("buy");' style="width: 320px; height: 60px;">
                        <input id="btn_basket" type="submit" value="장바구니담기"  style=" width: 320px; height: 60px;"  onclick='btn_click("basket");'>
                    </td>
                </tr> 
            </form>  
        </table><br><br>

        <table>
            <tr>
                <td class="bottom_content"><a href="javascript:doDisplay1()";><h4>상품 상세 정보</h4></a></td>
                <td class="bottom_content"><a href="javascript:doDisplay2()";><h4>배송 및 결제</h4></a></td>
                <td class="bottom_content"><a href="javascript:doDisplay3()";><h4>상품 후기</h4></a></td>
                <td class="bottom_content"><a href="javascript:doDisplay4()";><h4>상품 문의</h4></a></td>
            </tr>
        </table> 

           <div id="myDIV1">
                <img src="https://via.placeholder.com/1100x2000">
           </div>
               


            <div id="myDIV2" style="padding-left: 70px;">
                    <h5><b>배송 및 결제</b></h5><br>
                        <b>배송 정보</b><br>
                        <small>배송방법 : 택배 <br>
                        배송지역 : 전국지역<br>
                        배송비용 : 2500원<br>
                        배송기간 : 1~2일<br>
                        배송안내 : 고객님께서 주문하신 상품은 입금 확인 후 배송해 드립니다. 다만 재고수량에 따라 배송기간이 다소 지연 될 수 있습니다.<br>
                        </small>
                        <b>교환 및 반품정보</b><br><br>

                        <b>교환 및 반품이 가능한 경우</b><br>
                        <small>
                        상품을 공급받으신 날로부터 7일 이내 (반품/교환 비용 고객의 단숨 변신 및 착오 구매일 경우 상품 반송 비용은 고객 부담입니다.)<br>
                        공급받으신 상품 내용이 표시,광고 내용과 다르거나 다르게 이행된 경우에는<br>
                        공급받은 날로부터 3월 이내, 그 사실을 알게 된 날로부터 30일 이내</small><br><br>

                        <b>교환 및 반품이 불가능한 경우</b><br>
                        <small>
                        고객님의 책임 있는 사유로 상품이 훼손된 경우, 단 상품의 내용을 확인하기 위하여 포장등을 훼손한 경우는 제외<br>
                        포장을 개봉하였거나 포장이 훼손되어 상품 가치가 상실된 경우<br>
                        고객님이 사용 또는 일부 소비에 의하여 상품의 가치작 현저히 감소한경우</small>
            </div>

            <div id="myDIV3" style="padding-left: 70px;">
                <h5><b>상품 후기</b></h5><br>
                    <div id="review_wrapp">
                            <div>
                                <span class="sp_num">번호</span>
                                <span class="sp_title">제목</span>
                                <span class="sp_writer">작성자</span>
                                <span class="sp_date">작성일</span>
                                <span class="sp_hit">조회</span>
                            </div>
                            <div>
                                <span class="sp_num">1</span>
                                <span class="sp_title"><a href="javascript:content_display1()";>후기 작성 합니다</a></span>
                                <span class="sp_writer">강이린</span>
                                <span class="sp_date">2020.12.08</span>
                                <span class="sp_hit">10000</span><br>
                    
                                <span id="display1">
			                            내용입니다~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                </span>
                            </div> 
                            <div>
                                <span class="sp_num">1</span>
                                <span class="sp_title"><a href="javascript:content_display2()";>후기 작성 합니다</a></span>
                                <span class="sp_writer">강이린</span>
                                <span class="sp_date">2020.12.08</span>
                                <span class="sp_hit">10000</span><br>
                    
                                <span id="display2">
                                    2다~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                </span>
                            </div> 
                    </div>
                        <br>
                        <input type="button" value="후기 쓰기" onClick="location.href='write_review'">
            </div>
          

        <div id="myDIV4" style="padding-left: 70px;">
            <h5><b>상품 문의</b></h5><br>
            <div id="review_wrapp">
                    <div>
                        <span class="sp_num">번호</span>
                        <span class="sp_title">제목</span>
                        <span class="sp_writer">작성자</span>
                        <span class="sp_date">작성일</span>
                        <span class="sp_hit">조회</span>
                    </div>
                    <div>
                        <span class="sp_num">1</span>
                        <span class="sp_title"><a href="javascript:content_display6()";>문의 작성 합니다</a></span>
                        <span class="sp_writer">강이린</span>
                        <span class="sp_date">2020.12.08</span>
                        <span class="sp_hit">10000</span><br>
            
                        <span id="display6">
                            내용입니다~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        </span>
                    </div> 
                    <div>
                        <span class="sp_num">1</span>
                        <span class="sp_title"><a href="javascript:content_display7()";>문의 작성 합니다</a></span>
                        <span class="sp_writer">강이린</span>
                        <span class="sp_date">2020.12.08</span>
                        <span class="sp_hit">10000</span><br>
            
                        <span id="display7">
                            2다~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                        </span>
                    </div> 
            </div>
                <br>
                <input type="button"  value="문의 하기" onClick="location.href='write_question'">
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
	var bDisplay = true;
	function doDisplay1(){
		var con = document.getElementById("myDIV1");
		if(con.style.display=='block'){
			con.style.display='none';
			
		}else{
			con.style.display="block";
			document.getElementById("myDIV2").style.display="none"
			document.getElementById("myDIV3").style.display="none"
			document.getElementById("myDIV4").style.display="none"
		}
	}
</script>
<script>
	var bDisplay = true;
	function doDisplay2(){
		var con = document.getElementById("myDIV2");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
			document.getElementById("myDIV1").style.display="none"
			document.getElementById("myDIV3").style.display="none"
			document.getElementById("myDIV4").style.display="none"
		}
	}
</script>
<script>
	var bDisplay = true;
	function doDisplay3(){
		var con = document.getElementById("myDIV3");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
			document.getElementById("myDIV1").style.display="none"
			document.getElementById("myDIV2").style.display="none"
			document.getElementById("myDIV4").style.display="none"
		}
	}
</script>
<script>
	var bDisplay = true;
	function doDisplay4(){
		var con = document.getElementById("myDIV4");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
			document.getElementById("myDIV1").style.display="none"
			document.getElementById("myDIV2").style.display="none"
			document.getElementById("myDIV3").style.display="none"
		}
	}
</script>
<script>
	var bDisplay = true;
	function content_display1(){
		var con = document.getElementById("display1");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
		}
	}
</script>
<script>
	var bDisplay = true;
	function content_display2(){
		var con = document.getElementById("display2");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
		}
	}
</script>
<script>
	var bDisplay = true;
	function content_display6(){
		var con = document.getElementById("display6");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
		}
	}
</script>
<script>
	var bDisplay = true;
	function content_display7(){
		var con = document.getElementById("display7");
		if(con.style.display=='block'){
			con.style.display='none';
		}else{
			con.style.display="block";
		}
	}
</script>      
</html>
