<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script src="https://kit.fontawesome.com/3f8e0d8d89.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
<script type="text/javascript" src="/ease.js"></script>

<title>main</title>
</head>
<body>

	<style>
@import
	url('https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap')
	;

@font-face {
	font-family: 'S-CoreDream-4Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	padding: 0;
	margin: 0;
}

li, ul, ol {
	list-style: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.after::after {
	display: block;
	content: "";
	clear: both;
}

body {
	width: 100%;
	height: 100%;
	font-family: 'S-CoreDream-4Regular';
}

#nav {
	position: fixed;
	left: -400px;
	height: 100%;
	background: #ccc;
	float: left;
	width: 400px;
	transition: all 0.5s;
	z-index: 1;
}

#nav>.mainNav {
	width: 100%;
}

#nav>.mainNav>li {
	width: 100%;
	height: 50px;
	background: #ffdcdc;
	transition: all 0.5s;
	position: relative;
	border: 1px solid black;
	box-sizing: border-box;
}

#nav>.mainNav>li.on {
	margin-bottom: 150px;
	background: #ffdcdc;
	transition: all 1s;
	color: #fff;
}

#nav>.mainNav>li>a {
	display: block;
	height: 100%;
	box-sizing: border-box;
	text-align: center;
	font-size: 20px;
	line-height: 50px;
}

#nav>.mainNav>li.on>.sub {
	display: block;
}

#nav>.mainNav>li>.sub {
	transition: all 2s;
	position: absolute;
	width: 100%;
	height: 150px;
	background: #ff7979;
	display: none;
	box-sizing: border-box;
	border: 0.5px solid black;
}

#nav>.mainNav>li>.sub>li {
	width: 100%;
	height: 33.333%;
	transition: all 0.5s;
}

#nav>.mainNav>li>.sub>li>a {
	display: block;
	height: 100%;
	box-sizing: border-box;
	text-align: center;
	font-size: 14px;
	line-height: 50px;
}

#profile {
	width: 100%;
	height: 200px;
	background: #fff;
}

#profile>.pic {
	width: 40%;
	height: 100%;
	position: relative;
	float: left;
}

#profile>.pic>.picsize {
	width: 75%;
	height: 60%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 50%;
	background: #f4a6a6;
}

#profile>.userprofile {
	width: 60%;
	height: 100%;
	float: left;
}

#profile>.userprofile>.wrap {
	width: 100%;
	height: 70%;
	margin-top: 43%;
	transform: translateY(-50%);
}

#profile>.userprofile>.wrap>.text {
	width: 100%;
	height: 80%;
	position: relative;
}

#profile>.userprofile>.wrap>.text>p {
	width: 200px;
	background: #fff;
	height: 70px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 30px;
	border: 2px solid #f4a6a6;
	text-align: center;
	line-height: 60px;
}

#profile>.userprofile>.wrap>.usermenu {
	width: 100%;
}

#profile>.userprofile>.wrap>.usermenu>li {
	width: 48%;
	float: left;
	height: 20px;
}

#profile>.userprofile>.wrap>.usermenu>li:nth-of-type(2)::after {
	display: block;
	content: "";
	width: 1px;
	height: 28px;
	background: black;
	margin-top: -30px;
}

#profile>.userprofile>.wrap>.usermenu>li>a {
	display: block;
	text-align: center;
	line-height: 30px;
}

#main {
	width: 100%;
	height: 100%;
	float: left;
}

#main.on {
	background: rgba(0, 0, 0, 0.5);
}

#logo {
	width: 100%;
	height: 150px;
	background: #cf5151;
	margin: 0 auto;
	padding: 40px 0;
	box-sizing: border-box;
	position: relative;
}

#logo>a {
	display: block;
	width: 20%;
	color: #fff;
	margin: 0 auto;
	text-align: center;
	background: rgba(244, 244, 244, 0.5);
	font-size: 50px;
	width: 20%;
}

#logo>a>span {
	font-weight: bolder;
}

#topnav {
	position: absolute;
	top: 50px;
	right: 50px;
	width: 200px;
}

#topnav>li {
	width: 48%;
	height: 30px;
	float: left;
	font-size: 50px;
	color: #fff;
	margin-left: 2%;
}

#topnav>li:last-child {
	margin-left: 0;
}

#topnav>li>a {
	display: block;
	text-align: center;
}

#topnav>li>a>img {
	width: 60%;
	height: 60%;
	border-radius: 20px;
}

#session {
	width: 100%;
	height: 870px;
	background: #ffdcdc;
	padding: 30px;
	box-sizing: border-box;
}

#wrap {
	width: 95%;
	height: 100%;
	margin: 0 auto;
	position: relative;
	background: #cf5151;
	position: relative;
}

#notice, #notice2, #notice3, #notice4, #notice5, #notice6, #notice7,#notice8 {
	width: 95%;
	height: 500px;
	background: #fff;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 50px;
	box-sizing: border-box;
}

#notice2, #notice3, #notice4, #notice5, #notice6, #notice7,#notice8 {
	display: none;
	height: 600px;
}

#notice>p {
	width: 100%;
	height: 80%;
	line-height: 50px;
}

#notice>p>span {
	color: steelblue;
	font-size: 20px;
	font-weight: bold;
}

#agreebtn, #nobtn {
	cursor: pointer;
}

#notice2>.list2 {
	width: 100%;
	height: 20px;
	margin: 20px auto;
}

#notice2>.list2>li {
	width: 33.333%;
	height: 100%;
	float: left;
}

#image2 {
	width: 100%;
	height: 300px;
}

#image2>div {
	width: 300px;
	height: 100%;
	float: left;
	margin-right: 30px;
	margin-bottom: 30px;
}

#image2>div:last-child {
	margin-right: 0;
}

#image2>div>img {
	width: 100%;
	height: 100%;
}

#image2>div>p {
	font-size: 10px;
}

#btnbox {
	position: absolute;
	bottom: 50px;
	left: 50px;
	display: none;
}

</style>

	<script type="text/javascript">
		$(document).ready(
				function() {

					$("#nav>.mainNav>li>.sub>li").on("mouseover", function() {
						$(this).css({
							"color" : "red"
						})
					})

					$("#nav>.mainNav>li>.sub>li").on("mouseleave", function() {
						$(this).css({
							"color" : "black"
						})
					})

					$("#nav>.mainNav>li").on("click", function() {
						$("#nav>.mainNav>li").removeClass('on');
						$(this).addClass('on');
					})

					var iconli = $("#iconNav>li");

					$(iconli).on(
							"click",
							function() {
								var iconIndex = $(this).index();
								$("#tierIcon >.hiddenWrap>.icon>div").stop()
										.fadeOut("slow");
								$("#tierIcon >.hiddenWrap>.icon>div").eq(
										iconIndex).stop().fadeIn("slow");

								$("#iconNav>li").css({
									"background" : "red",
									"color" : "#fff"
								});
								$(this).css({
									"background" : "#555",
									"color" : "#ccc"
								});

								if (iconIndex == 5) {
									$("#tierIcon >.hiddenWrap>.icon>div").css({
										"background" : "pink"
									}, 2000);
								} else {
									$("#tierIcon >.hiddenWrap>.icon>div").css({
										"background" : "#fff"
									}, 5200);
								}

							})

					var nowpop = 0;

					$("#nobtn").on("click", function() {
						$("#mainform").submit();
					});

					$("#agreebtn").on("click", function() {
						$("#notice").stop().fadeOut();
						$("#notice2").stop().fadeIn();
						$("#btnbox").css({
							"display" : "block"
						});
						nowpop += 1;
						console.log(nowpop);
					});

					console.log(nowpop);
					$("#prev").on("click", function() {
						$("#wrap>div").eq(nowpop).stop().fadeOut();
						nowpop -= 1;
						if (nowpop <= 0) {
							nowpop = 0;
							$("#btnbox").css({
								"display" : "none"
							});
						}

						if (nowpop == 2) {
							$("#session").css({
								"height" : "5500px"
							});

							$("#notice3").css({
								"height" : "5200px",
								"top" : "50%",
							});
						}

						if (nowpop != 2) {
							$("#session").css({
								"height" : "870px"
							});

							$("#notice3").css({
								"height" : "600px",
								"top" : "50%",
							});
						}

						if (nowpop == 3) {
							$("#session").css({
								"height" : "3500px"
							});

							$("#notice4").css({
								"height" : "3250px",
								"top" : "50%",
							});
						}
						if (nowpop == 4) {
							$("#session").css({
								"height" : "1000px"
							});

							$("#notice5").css({
								"height" : "750px",
								"top" : "50%",
							});
						}

						if (nowpop == 5) {
							$("#session").css({
								"height" : "2200px"
							});

							$("#notice6").css({
								"height" : "1900px",
								"top" : "50%",
							});
							
						}

						if (nowpop == 6) {
							$("#session").css({
								"height" : "3000px"
							});

							$("#notice7").css({
								"height" : "2750px",
								"top" : "50%",
							});
						}

						$("#wrap>div").eq(nowpop).stop().fadeIn();
						console.log(nowpop);
					})

					$("#next").on("click", function() {
						$("#wrap>div").eq(nowpop).stop().fadeOut();
						nowpop += 1;
						if (nowpop > 7) {
							nowpop = 7;
							alert("마지막 입니다.");
						}

						if (nowpop == 2) {
							$("#session").css({
								"height" : "5500px"
							});

							$("#notice3").css({
								"height" : "5200px",
								"top" : "50%",
							});
						}

						if (nowpop != 2) {
							$("#session").css({
								"height" : "870px"
							});

							$("#notice3").css({
								"height" : "600px",
								"top" : "50%",
							});
						}

						if (nowpop == 3) {
							$("#session").css({
								"height" : "3500px"
							});

							$("#notice4").css({
								"height" : "3250px",
								"top" : "50%",
							});
						}

						if (nowpop == 4) {
							$("#session").css({
								"height" : "1000px"
							});

							$("#notice5").css({
								"height" : "750px",
								"top" : "50%",
							});
						}

						if (nowpop == 5) {
							$("#session").css({
								"height" : "2200px"
							});

							$("#notice6").css({
								"height" : "1900px",
								"top" : "50%",
							});
						}

						if (nowpop == 6) {
							$("#session").css({
								"height" : "3000px"
							});

							$("#notice7").css({
								"height" : "2750px",
								"top" : "50%",
							});
						}


						$("#wrap>div").eq(nowpop).stop().fadeIn();
						console.log(nowpop);
					})

				})

		var flag = 0;

		function navslide() {

			console.log(flag);

			if (flag == 0) {
				$("#nav").css({
					"left" : "0px"
				})
				$("#main").addClass("on");
				flag = 1;
			} else {

				$("#nav").css({
					"left" : "-400px"
				})
				$("#main").removeClass("on");
				flag = 0;

			}

		}
	</script>

	<div id="nav">

		<div id="profile">

			<div class="pic">
				<div class="picsize">
					<img alt="#" src="">
				</div>

			</div>

			<div class="userprofile">

				<div class="wrap">

					<div class="text">
						<c:choose>
							<c:when test="${loginedUser eq null}">
								<p>로그인이 필요 합니다.</p>
							</c:when>

							<c:otherwise>
								<p>${loginedUser.name}님반갑습니다.</p>
							</c:otherwise>

						</c:choose>

					</div>

					<ul class="usermenu">
						<li><a href="http://localhost:8099/article/usermody"> 계정
								관리 </a></li>

						<c:choose>
							<c:when test="${loginedUser eq null}">
								<li><a href="http://localhost:8099/users/login"> 로그인 </a></li>
							</c:when>

							<c:otherwise>
								<li><a href="http://localhost:8099/users/logout"> 로그아웃
								</a></li>
							</c:otherwise>

						</c:choose>

					</ul>

				</div>

			</div>


		</div>

		<ul class='mainNav'>
			<li><a href="#"> 헌혈증 등록 / 조회 </a>
				<ul class="sub">
					<li><a href="http://localhost:8099/card/add">헌혈증 등록</a></li>
					<li><a href="http://localhost:8099/card/cards">내 헌혈증 조회</a></li>
					<li><a href="#">depth3 준비중</a></li>
				</ul></li>
			<li><a href="#"> 기증 / Request </a>
				<ul class="sub">
					<li><a href="#"> 기증을 기다립니다 (기관) </a></li>
					<li><a href="http://localhost:8099/article/donation2"> 기증을
							기다립니다 (개인)</a></li>
					<li><a href="#"> 기증합니다 </a></li>
				</ul></li>
			<li><a href="#"> 헌혈증 대출하기 </a>
				<ul class="sub">
					<li><a href="http://localhost:8099/card/status">현황판</a></li>
					<li><a href="http://localhost:8099/loan/judge">대출 심사</a></li>
					<li><a href="http://localhost:8099/loan/grade">내 등급 확인 하기</a></li>
				</ul></li>
			<li><a href="#"> nav 준비중 </a>
				<ul class="sub">
					<li><a href="#">depth1 준비중</a></li>
					<li><a href="#">depth2 준비중</a></li>
					<li><a href="#">depth3 준비중</a></li>
				</ul></li>
			<li><a href="#"> nav 준비중 </a>
				<ul class="sub">
					<li><a href="#">depth1 준비중</a></li>
					<li><a href="#">depth2 준비중</a></li>
					<li><a href="#">depth3 준비중</a></li>
				</ul></li>
		</ul>
	</div>

	<div id="main">

		<div id="logo">
			<a href="http://localhost:8099/article/main"> 우리<span>헌혈</span>해요
			</a>
			<ul id="topnav">
				<li><c:choose>

						<c:when test="${loginedUser eq null}">
							<a href="#"><i class="far fa-user-circle"></i></a>
						</c:when>

						<c:when test="${loginedUser.bloodgroup eq 'A'}">
							<a href="#"> <img alt="불러오기실패" src="/img/bloodA.jpg">
							</a>
						</c:when>

						<c:when test="${loginedUser.bloodgroup eq 'B'}">
							<a href="#"> <img alt="불러오기실패" src="/img/bloodB.jpg">
							</a>
						</c:when>
						<c:when test="${loginedUser.bloodgroup eq 'AB'}">
							<a href="#"> <img alt="불러오기실패" src="/img/bloodAB.jpg">
							</a>
						</c:when>
						<c:when test="${loginedUser.bloodgroup eq 'O'}">
							<a href="#"> <img alt="불러오기실패" src="/img/bloodO.jpg">
							</a>
						</c:when>

					</c:choose></li>
				<li><a href="#" id="ham" onclick="navslide();"><i
						class="fas fa-bars"></i></a></li>
			</ul>

		</div>


		<div id="session" class="after">
			<div id="wrap">
				<div id="notice">
					<p>
						<span>※ 다음은 헌혈자와 수혈자의 건강을 보호하기 위해 반드시 필요한 문진사항들입니다.</span> <br>혈액관리법
						제4조의2 제2항에 따라 헌혈자는 안전한 혈액의 채혈 및 공급을 위하여 신상 및 병력에 대한정보를 사실대로 성실하게
						제공하여야 합니다. <br>헌혈자의 부정확한 정보제공 및 답변이 수혈자에게 나쁜 영향을 미칠 수 있으므로,
						반드시 정직하고 성실하게 답변해 주시길 바랍니다. <br>후천성면역결핍증(에이즈) 검사를 목적으로 한 헌혈은
						엄격히 금지되어 있으며, 혈액관리법 시행규칙제8조제4항에 의해 후천성면역결핍증 검사결과는 통보되지 않습니다. <br>혈액관리법
						시행령 제10조의2에 따라 헌혈자의 민감정보 및 고유식별정보(주민등록번호 등)의 처리가가능하며, <br>혈액관리업무
						이외의 다른 목적에 사용 또는 공개되지 않습니다.
					</p>
					<button id="agreebtn">동의</button>
					<button id="nobtn">동의하지 않음</button>
					<form id="mainform" action="http://localhost:8099/article/main"></form>
				</div>
				<div id="notice2">
					<p>
						헌혈금지 약물 및 예방접종 필수 01v05(2020.07.26) 저작권 등록번호: 제C-2020-026202호 <br>
						<br> 아래의 약물, 주사제는 혈액 및 수혈자의 건강에 영향을 미칠 위험이 있으므로 현재 또는 과거에 복용한
						경험이 있는 경우일정기간 동안 헌혈에 참여하실 수 없으며, <br> 문진간호사에게 문의해 주시기 바랍니다.
					</p>
					<ul class="list2">
						<li>1.태아 기형을 일으킬 위험이 있는 약물</li>
						<li>2.기타 약물 및 주사제</li>
						<li>3.예방접종</li>
					</ul>
					<div id="image2" class="after">
						<div>
							<img alt="#" src="/img/notice2_img1.jpg">
						</div>
						<div>
							<img alt="#" src="/img/notice2_img2.jpg">
							<p>*감기 치료 목적으로 경구 약복용인 경우 3일</p>
						</div>
						<div>
							<img alt="#" src="/img/notice2_img3.jpg">
						</div>
					</div>

				</div>

				<div id="notice3">
					<p>
						헌혈금지 약물(태아영향) 필수06v03(2020.07.26) 저작권 등록번호: 제C-2020-026202호 <br>

						아래 약물은 수혈자의 태아에 영향을 미칠 가능성이 있으므로 현재 또는 과거에 복용한 경험이 있는 경우 일정기간
						동안헌혈에 참여하실 수 없습니다.<br> 해당 약물을 복용한 헌혈자의 혈액을 통해 태아기형이 발생된 사례는
						전세계적으로 보고된 바 없고 그 가능성은 매우 낮지만,<br> 헌혈 제한을 통해 태아기형 발생을 예방하고자
						합니다.
					</p>

					<div class="con1">
						<p>
							1.건선<br> 치료제 [영구 금지] 헌혈 금지기간: 영구 성분명: 에트레티네이트(Etretinate)
						</p>

						<img alt="#" src="/img/con_img4.jpg">

						<p>*위약품들은 1996년 4월 국내 허가가 취소되어 상용되지 않음.</p>
					</div>

					<div class="con2">
						<p>
							2.건선 치료제 [3년 금지] <br> 헌혈 금지기간: 3년<br> 성분명:
							아시트레틴(Acitretin)
						</p>
						<img alt="#" src="/img/con_img5.jpg">


						<p>*상품명: 현재 유통ㆍ생산중이거나 생산ㆍ수입실적이 있는 품목임.</p>

					</div>

					<div class="con3">
						<p>
							3.전립선비대증 치료제 [6개월 금지] <br>헌혈 금지기간: 6개월 <br>성분명: 두타스테라이드
							(Dutasteride)<br> 상품명: 네오다트, 두바럽, 두스타, 두테론, 두테드, 두테스몰, 아나딘,
							아보다트, 아보스타, 아보테리드, 아보피나 등
						</p>
						<img alt="#" src="/img/con_img6.jpg">


						<p>*상품명: 현재 유통ㆍ생산중이거나 생산ㆍ수입실적이 있는 품목임.</p>

					</div>

					<div class="con4">
						<p>
							4.전립선비대증 치료제 [4주금지] <br>헌혈 금지기간: 4주 <br>성분명: 피나스테라이드
							(Finasteride) <br> 상품명: 그로모정, 나우스카정, 대웅바이오피나스테리드정, 마이피나정,
							보령피나스테리드정, 비피케어정, 스카렉스정, 스카테론정, 씨엠피나정, 엔피스카정, 유레이드정, 유로리드정,
							유로스칸정, 유로피나정, 이니스트피나스테리드정, 일양피나스테리드정, 트로피나정, 파나드정, 파나리드정, 파나스카정,
							푸로스타정, 푸로케어정, 프로나드정, 프로리드정, 프로스몰정, 프로스카정, 프로스타트정, 프로스테리드정, 프로스틸정,
							프로엠정, 프로피나정, 프리스타정, 프리피나정, 피나그렌정, 피나드론정, 피나드정, 피나론정, 피나린정, 피나베린정,
							피나세틴정, 피나스로정, 피나스타정, 피나스테아정, 피나스테이트아이정, 피나스텔정, 피나스토정, 피나스티드정,
							피나스틴정, 피나시아정, 피나이스정, 피나정, 피나젠정, 피나즈정, 피나진정, 피나텐정, 피나트라정, 피로이드정,
							피스테리정, 피테스정, 핀스타정, 핀카정, 필라스트정, 하이피나정, 한림피나스테리드정, 한올피나스테리드정,
							화이자피나스테리드정 등
						</p>
						<img alt="#" src="/img/con_img7.jpg">


						<p>*상품명: 현재 유통ㆍ생산중이거나 생산ㆍ수입실적이 있는 품목임.</p>

					</div>


					<div class="con5">
						<p>
							5.탈모증 치료제 [4주 금지] <br>헌혈 금지기간: 4주 <br>성분명:
							피나스테라이드(Finasteride)
						</p>
						<img alt="#" src="/img/con_img8.jpg">


						<p>*상품명: 현재 유통ㆍ생산중이거나 생산ㆍ수입실적이 있는 품목임.</p>

					</div>


					<div class="con6">
						<p>
							6.여드름 치료제 [4주 금지]<br> 헌혈 금지기간: 4주 <br>성분명: 이소트레티노인 상품명:
							뉴티논, 니메겐, 레씨범, 로아큐탄, 로이탄, 아큐네탄, 아크날, 아키놀, 이소트렌, 이소티나, 이소티논, 제로큐탄,
							클레어, 트레논, 트레틴, 핀플 등
						</p>
						<img alt="#" src="/img/con_img9.jpg">

					</div>


					<div class="con7">
						<p>
							7.손습진 치료제 [1개월 금지] <br>헌혈 금지기간: 1개월 <br>성분명:
							알리트레티노인(Alitretinoin) <br> 상품명: 알리톡
						</p>
						<img alt="#" src="/img/con_img28.jpg">


						<p>*상품명: 현재 유통ㆍ생산중이거나 생산ㆍ수입실적이 있는 품목임.</p>

					</div>

					<div class="con8">
						<p>
							8.항악성종양/나성결절홍반(ENL) 치료제 [1개월 금지] <br>헌혈 금지기간: 1개월 <br>성분명:
							탈리도마이드(Thalidomide) <br>상품명: 세엘진탈리도마이드, 알보젠탈리도마이드, 탈라이드,
							탈로마, 탈리그로브 등
						</p>
						<img alt="#" src="/img/con_img29.jpg">


						<p>*상품명: 현재 유통ㆍ생산중이거나 생산ㆍ수입실적이 있는 품목임.</p>

					</div>


					<div class="con9">
						<p>
							9.항악성종양 치료제 [24개월 금지] <br>헌혈 금지기간: 1개월 <br>성분명:
							비스모데깁(Vismodegib) <br>상품명: 에리벳지
						</p>
						<img alt="#" src="/img/con_img30.jpg">


						<p>* 위상품은 국내 허가 품목이지만 상용되지 않음</p>

					</div>


					<p>*출처: 혈액관리법시행규칙 [별표1의2] 채혈금지대상자, 건강보험심사평가원(www.hira.or.kr),
						전자민원창구의약품(ezdrug.kfda.go.kr), 질병관리본부(www.cdc.go.kr),
						약학정보원(www.health.kr), 드럭인포(www.druginfo.co.kr),
						킴스온라인(www.kimsonline.co.kr), 헌혈금지약물의 범위 지정(시행 2016.12.15. 보건복지부 고시
						제2016-235호, 2016.1.15제정) 헌혈금지약물(태아 영향) 관련 금기, 헌혈 보류 등 사용상 주의사항에 대한
						상세 안내문은 대한적십자사 혈액관리본부 홈페이지(www.bloodinfo.net)에 게시되어 있으니 참고하시기
						바랍니다. *혈액관리본부 홈페이지 게시 부분: 헌혈참여-헌혈관련 안내문 헌혈금지약물(태아 영향)에 대한 기타 사용 상
						주의사항 (경고, 투여금지, 신중투여, 이상반응, 일반적 주의, 상호작용, 임부 및 수유부에 대한 투여, 소아에 대한
						투여, 고령자에 대한 투여, 과량투여시의 처치, 보관 및 취급상의 주의사항, 기타)은 의료기관이나 약국에서 상의해
						주시기 바랍니다.</p>

				</div>

				<div id="notice4">
					<p>
						감염병종류 및 변종 크로이츠펠트 - 야콥병 헌혈금지지역 필수02v03(2020.08.28) 저작권 등록번호:
						제C-2020-026202호 <br> 1.감염병 종류
					</p>
					<img alt="#" src="/img/con_img10.jpg">
					<p>
						*출처: 감염병 병원체 수혈감염 위험도 분류(2011.3.23.)<br> <br> 2.변종
						크로이츠펠트-야콥병 헌혈금지지역 유럽: 영국
					</p>
					<img alt="#" src="/img/con_img11.jpg">
					<p>유럽: 프랑스</p>
					<img alt="#" src="/img/con_img12.jpg">
					<p>기타유럽: 광우병 발생국가</p>
					<img alt="#" src="/img/con_img13.jpg">
					<p>기타유럽: 위험성이 높은국가</p>
					<img alt="#" src="/img/con_img14.jpg">
				</div>

				<div id="notice5">
					<p>
						국내 말라리아 관련 헌혈 제한지역 필수03v09(2020.07.20) 저작권등록번호: 제C-2020-026202호 <br>
						<br> 헌혈 제한지역
					</p>
					<img alt="#" src="/img/con_img15.jpg">
					<p>
						말라리아 관련 헌혈 제한지역에 거주나 복무(연중 6개월 이상 숙박) <br>시는 2년간, 여행(연중 1일 이상
						~ 6개월 미만 숙박)시는 1년간 전혈헌혈 및 혈소판성분헌혈을 할 수 없으며 혈장성분헌혈만 가능함. <br>말라리아
						관련 헌혈 제한지역 숙박 시 무증상의 상태로 말라리아 원충이 적혈구 내에 잠재할 가능성이 있으므로 군인 및일반인 모두
						전혈헌혈 및 혈소판성분헌혈을 제한함. <br>말라리아 관련 헌혈 제한(위험)지역 해상에서만 숙박한 경우
						해상지역이 지상으로부터 30km 이상 떨어지면 전혈헌혈이가능함. <br>군인은 경기도 양주시, 강원도 철원군
						복무(연중 6개월 이상 숙박)의 경우 혈장성분헌혈만 가능함. <br>북한의 경우 국외헌혈기준에 준하여 적용.
						<br>*출처: 질병관리본부 혈액안전감시과(2020.07.15)
					</p>
				</div>

				<div id="notice6">
					<p>
						국외 말라리아 관련 헌혈 제한지역 [대륙별] 필수04v09(2020.07.20) 저작권 등록번호:
						제C-2020-026202호 <br> <br> 아래 국가에 거주나 복무(연중 6개월 이상) 시는
						3년간, 여행(연중 1일 이상~6개월 미만 숙박) <br> 시는 1년간 전혈헌혈 및 혈소판성분헌혈을 할 수
						없으며, 혈장성분헌혈만 가능합니다.<br> 1. 아메리카
					</p>
					<img alt="#" src="/img/con_img16.jpg">
					<p>2. 아프리카</p>
					<img alt="#" src="/img/con_img17.jpg">
					<p>3. 아시아/오세아니아</p>
					<img alt="#" src="/img/con_img18.jpg">
					<p>*출처: 미국질병통제예방센터(2020.07.15)</p>
				</div>

				<div id="notice7">
					<p>
						헌혈 후 생길 수 있는 증상 필수05v02(2020.08.28) 저작권 등록번호: 제C-2020-026202호 <br>
						<br> 대부분의 경우 헌혈관련 증상을 보이지 않지만, 일부에서는 다음의 증상이 발생할 수 있습니다.
					</p>
					<img alt="#" src="/img/con_img21.jpg"> <img alt="#"
						src="/img/con_img24.jpg"> <img alt="#"
						src="/img/con_img27.jpg"> <img alt="#"
						src="/img/con_img22.jpg"> <img alt="#"
						src="/img/con_img25.jpg"> <img alt="#"
						src="/img/con_img23.jpg">
					<p>
						계속하여 증상이 사라지지 않으면 헌혈증서에 표기된 혈액원으로 연락주십시오.<br> 헌혈관련 증상의 발생을
						예방하기 위하여 헌혈 후 유의사항을 꼭 지켜주세요!
					</p>

				</div>

				<div id="notice8">
					<a href="http://localhost:8099/loan/goloan" id="goloan">헌혈증 대출 심사 하러 가기 </a>
				</div>

				<div id="btnbox">
					<button id="prev">이전</button>
					<button id="next">다음</button>
				</div>

			</div>
		</div>



	</div>

</body>
</html>