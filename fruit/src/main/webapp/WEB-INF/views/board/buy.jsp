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
    <title>주문서</title>
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
         #basket_img{
        	height:35px;
        }
/* main */
		#main_wrapper{
			width:1060px;
			margin:0 auto;
		}
		#main_wrapper h3{
			margin-top:100px;
			font-weight:bold;
			text-align: center;
		}	
		#goods_h5{
			margin-top:100px;
		}
		#main_wrapper h6{
			color:gray;
			text-align: center;
		}
		#goods_info_table{/* 상품정보 테이블 */
			border-top:1px solid rgb(1, 114, 18);
			width:1060px;
			vertical-align:middle;
			margin-top:30px;
			margin-bottom:50px;
		}
		#goods_info_table a:hover{
			color:#00af85;
		}
		#goods_info_table th{
			height:60px;
			font-weight: normal;
			padding-left:30px;
		}
		
		#goods_info_table td{
			padding-left:30px;
		}
		.goods_info_td{
			height:200px;
			border-top:1px solid rgb(195, 195, 195);
			border-bottom:1px solid rgb(195, 195, 195);
		}
		#Orderer_info_table{/* 주문자 정보 테이블 */
			width:1060px;
			height:150px;
			padding-right:20px;
			border-top:1px solid rgb(1, 114, 18);
			border-bottom:1px solid rgb(195, 195, 195);
			margin-top:30px;
			margin-bottom:50px;
		}
		#Orderer_info_table th{
			font-weight: normal;
			padding-left:30px;
		}
		#delivery_info_table{/* 배송정보 테이블 */
			width:1060px;
			height:300px;
			margin-top:30px;
			border-top:1px solid rgb(1, 114, 18);
			border-bottom:1px solid rgb(195, 195, 195);
		}
		#delivery_info_table th{
			padding-left:30px;
			font-weight: normal;
		}
		#delivery_info_table tr{
			border-bottom:1px solid rgb(195, 195, 195);
		}
		#delivery_info_table p{
			color:rgb(195, 195, 195);
		}
		#delivery_info_table input[type=button]{
			width:100px;
			height:40px;
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
		}
		#coupon_info{
			float:left;
		}
		#coupon_info h5{
			margin-top:50px;
		}
		#coupon_info_table{/* 쿠폰 / 적립금 테이블 */
			width:700px;
			height:200px;
			margin-top:30px;
			margin-bottom:50px;
			border-top:1px solid rgb(1, 114, 18);
			border-bottom:1px solid rgb(195, 195, 195);
		}
		#coupon_info_table input[type=text]{
			height:30px;
			margin-right:10px;
		}
		#coupon_info_table input[type=checkbox]{
			width:20px;
			height:20px;
			margin-bottom:10px;
		}
		#coupon_info_table td{
			padding-left:30px;
			
		}
		#payment_info{
			float:left;
		}
		#payment_info_table{ /* 결제수단 테이블 */
			width:700px;
			height:400px;
			margin-bottom:50px;
			border-top:1px solid rgb(1, 114, 18);
			border-bottom:1px solid rgb(195, 195, 195);
		}
		#payment_info_table td{
			padding-left:20px;
		}
		#payment_info_table input[type=radio]{
			width:20px;
			height:20px;
			
		}
		.payment_notice{/* 결제수단 테이블 하단의 공지 */
			font-size: 11px;
		}
		#main_bottom{
			width:1060px;
			float:left;
		}
		#payment_money{/* 결제금액 div */
			float:right;
			width:300px;
			margin-top:50px;
			
		}
		#payment_money_table{
			width:290px;
			height:300px;
			margin-top:30px;
			background-color: #f9f9f9;
		}
		#payment_money_table tr:nth-child(2),#payment_money_table tr:nth-child(3){
			color:#cccccc;
			
		}
		.payment_td1{
			padding-top:30px;
		}
		#payment_td2{
			padding-bottom:30px;
		}
		#payment_money_table .first_td{
			text-align: left;
			padding-left: 10px;
		}
		#payment_money_table .second_td{
			text-align: right;
			padding-right: 10px;
		}
		#payment_button{/* 결제하기 버튼 */
			margin-left:450px;
			width:150px;
			height:40px;
			background-color:#00af85;
			color:white;
			border:1px solid #00af85;
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
   <script type="text/javascript">
   		var use_price;
   		var amount;
   		function init(){
			use_price = document.coupon_form.sum.value;
			amount = document.coupon_form.buy_price.value;
		}

		function use_all(){
			init();
			var checkbox = document.getElementById("all_chbox");
			if(checkbox.checked == true){
				document.coupon_form.sum.value =  parseInt(amount);
			}
			else{
				document.coupon_form.sum.value = parseInt(0);
			}
		}
		function printmoney(){
			 var fmoney = 29400;
			 var money = document.getElementById('sum').value;
		     document.getElementById('sale_money').innerHTML = money + "원";
		     document.getElementById('final_money').innerHTML = fmoney - money + "원";
		}
   </script>
   <script>
    $(document).ready(function(){
    $("#all_chbox").change(function(){
        if($("#all_chbox").is(":checked")){
            document.coupon_form.sum.value =  parseInt(amount);
            printmoney();
        }else{
            printmoney();
        }
    });
    });
   </script>
   <script>
      $(function(){ 
         var $win = $(window); 
         var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
         /*사용자 설정 값 시작*/ 
         var speed = 700; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec) 
         var easing = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing 
         var $layer = $('.float_sidebar1'); // 레이어 셀렉팅 
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
	    <div id ="side_img" class="float_sidebar1">
			<table id ="side_table">
				<tr>
					<td><img src="images/Advertising1.jpg"></td>
				</tr>
				<tr>
					<td><p class="side_p" onclick="location.href='service_center'"style="cursor: pointer;">공지사항</p></td>
				</tr> 
				<tr>
					<td><p class="side_p" onclick="location.href='basket'"style="cursor: pointer;">장바구니</p></td>
				</tr>
				<tr>
					<td><p class="side_p">1600-1111</p></td>
				</tr>
			</table>
		</div>
    	<div id="main_wrapper">
    		<h3>주문서</h3>
    		<h6>주문하실 상품명 및 수량을 정확하게 확인해 주세요.</h6>
    		
    		<div id="goods_info">
    			<h5 id="goods_h5">상품정보</h5>
    			<form name="goods_form" method="post">
	    			<table id="goods_info_table">
	    				<tr> 
	    					<th width="70%" colspan="2">상품정보</th>
	    					<th width="30%">상품금액</th>
	    				</tr>
	    				<tr>
	    					<td width="15%" class="goods_info_td"><img src="https://via.placeholder.com/120x150" onClick="location.href='fruit_view'" style="cursor: pointer;"></td>
	    					<td width="55%" class="goods_info_td"><a href="fruit_view"><h5>사과 1박스</h5></a>1개 / 개당25,000원</td>
	    					
	                        <td width="30%" class="goods_info_td" style="color: #00af85"><b>25,000원</b>
	                        <input type="hidden" name="goods_price" value="25000"></td>
	    				</tr>
	    				<tr>
	    					<td class="goods_info_td"><img src="https://via.placeholder.com/120x150" onClick="location.href='fruit_view'" style="cursor: pointer;"></td>
	    					<td class="goods_info_td"><a href="fruit_view"><h5>딸기 1팩</h5></a>1개 / 개당4,400원</td>
	    					
	                        <td class="goods_info_td" style="color: #00af85"><b>4,400원</b>
	                        <input type="hidden" name="goods_price" value="4400"></td>
	    				</tr>
	    			</table>
    			</form>
    		</div>
    		<div id="Orderer_info">
    			<h5>주문자정보</h5>
    			<table id="Orderer_info_table">
    				<tr>
    					<th>보내는 분</th>
    					<td>이정현</td>
    				</tr>
    				<tr>
    					<th>휴대폰</th>
    					<td>010-7777-4267</td>
    				</tr>
    				<tr>
    					<th>이메일</th>
    					<td>togla1382@gmail.com</td>
    				</tr>
    			</table>
    		</div>
    		<div id="delivery_info">
    			<h5>배송 정보</h5>
    			<table id="delivery_info_table">
    				<tr>
    					<th>배송지</th>
    					<td>서울 강북구 수유3동 166-15(한신빌라트) 401호<p>받으실 분 정보를 입력해 주세요.</p><input type="button"  onclick="location.href='shipping_destination'"value="변경"></td>
    				</tr>
    				<tr>
    					<th>받으실 장소</th>
    					<td><p>받으실 장소를 선택해 주세요.</p><input type="button"onClick="location.href='place'" value="입력"></td>
    				</tr>
    			</table>
    		</div><br>
    		<img src="images/fruit_b.jpg" onClick="location.href='fruit_view'" style="cursor: pointer;">
    		<div id="main_bottom">
	    		<div id="coupon_info">
	    			<h5>쿠폰 / 적립금</h5>
	    			<form name="coupon_form" method="post">
		    			<table id="coupon_info_table">
		    				<tr>
		    					<td>적립금 적용 <input  type=hidden name="buy_price" value="3000"></td>
                                <td><input type="number" id="sum" name="sum" value="0" min="0"max="3000" onkeyup='printmoney()'>원 
                                    <input type="checkbox" id="all_chbox" onclick="use_all()">모두사용<br>보유적립금 : 3000원</td>
		    				</tr>
		    			</table>
	    			</form>
	    		</div>
	    		<div id="payment_money" class ="float_sidebar">
    				<form name="payment_money_form">
				    	<table id="payment_money_table">
				    		<h5>결제금액</h5>
				    		<tr>
				    			<td class="first_td" style="padding-top: 20px;">주문 금액</td>
				    			<td class="second_td" style="padding-top: 20px;">29,400원</td>
				    		</tr>
				    		<tr>
				    			<td class="first_td">ㄴ상품금액</td>
				    			<td class="second_td">29,400원</td>
				    		</tr>
				    		<tr>
				    			<td class="first_td">ㄴ상품할인</td>
				    			<td class="second_td">0원</td>
				    		</tr>
				    		<tr>
				    			<td class="first_td">배송비</td>
				    			<td class="second_td">0원</td>
				    		</tr>
				    		<tr>
				    			<td class="first_td">적립금 사용</td>
				    			<td class="second_td" id ="sale_money">0원</td>
				    		</tr>
				    		<tr>
				    			<td colspan="2"><hr style="width: 270px; margin-left: 10px;" ></td>
				    		</tr>
				    		<tr>
				    			<td class="first_td">최종결제 금액</td>
				    			<td class="second_td"><h4 id ="final_money">29,400원</h4></td>
				    		</tr>
				    		<tr>
				    			<td colspan="2" style="padding-right:10px; text-align: right; color: #cbcbcb; font-size: 14px; padding-bottom:20px;">구매 시 3%적립</td>
				    		</tr>
				    	</table>
			    	</form>
	    		</div>
	    		<div id="payment_info">
	    			<h5>결제 수단</h5>
	    			<table id="payment_info_table">
	    				<tr>
	    					<td width="30%" class="payment_td1">일반결제</td>
	    					<td width="70%">
	    						<input type="radio" id="card"  name="payment" value="card" checked>
	    						<label for="card" class="payment_td1">신용카드</label>
	    					</td>
	    				<tr>
	    				<tr>
	    					<td>CHAI 결제</td>
	    					<td>
	    						<input type="radio" id="chai" name="payment" value="chai">
	    						<label for="chai"><img src="images/payment_logo/chai.png"></label>
	    					</td>
	    				<tr>
	    				<tr>
	    					<td>토스 결제</td>
	    					<td>
	    						<input type="radio" id="toss"name="payment" value="toss">
	    						<label for="toss"><img src="images/payment_logo/toss.png"></label>
	    					</td>
	    				<tr>
	    				<tr>
	    					<td>네이버페이 결제</td>
	    					<td>
	    						<input type="radio" id="naverpay"name="payment" value="naverpay">
	    						<label for="naverpay"><img src="images/payment_logo/naverpay.png"></label>
	    					</td>
	    				<tr>
	    				<tr>
	    					<td>PAYCO 결제</td>
	    					<td>
	    						<input type="radio" id="payco"name="payment" value="payco">
	    						<label for="payco"><img src="images/payment_logo/payco.png"></label>
	    					</td>
	    				<tr>
	    				<tr>
	    					<td>스마일페이 결제</td>
	    					<td>
	    						<input type="radio" id="smilepay"name="payment" value="smilepay">
	    						<label for="smilepay"><img src="images/payment_logo/smilepay.png"></label>
	    					</td>
	    				<tr>
	    				<tr>
	    					<td>휴대폰 결제</td>
	    					<td>
	    						<input type="radio" id="phone"name="payment" value="phone">
	    						<label for="phone">휴대폰</label> 
	    					</td>
	    				<tr><br>
	    				<tr>
	    					<td colspan="2" class="payment_notice">※페이코,네이버페이,토스,차이 결제는 결제 시 결제하신 수단으로만 환불되는 점 양해부탁드립니다.</td>
	    				</tr> 
	    				<tr>
	    					<td colspan="2" class="payment_notice">※고객님은 안전거래를 위ㅐ해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 토스페이먼츠의 구매안전(에스크로)서비스를 이용하실 수 있습니다.</td>
	    				</tr>
	    				<tr>
	    					<td colspan="2" id="payment_td2" class="payment_notice">※보안강화로 Internet Explorer8미만 사용 시 결제창이 뜨지 않을 수 있습니다.</td>
	    				</tr>
	    			</table>
	    		</div>
	    		
    		</div>
    		<input type="submit" id="payment_button" value="결제하기">
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
     <script>
      $(function(){ 
         var $win = $(window); 
         var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다. 
         /*사용자 설정 값 시작*/ 
         var speed = 500; // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec) 
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
               yPosition = $win.scrollTop() - 1550; //이부분을 조정해서 화면에 보이도록 맞추세요 
               if (yPosition < 0) { 
                  yPosition = 0; 
               } 
               $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false}); 
         }); 
      }); 
   </script>
</body>
</html>