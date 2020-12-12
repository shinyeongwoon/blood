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
	height: 1350px;
}

#explanation {
	width: 100%;
	height: 100%;
	position: relative;
}

#explanation>#tier {
	width: 95%;
	height: 1300px;
	background: #ccc;
	margin: 30px auto;
	padding: 5px;
	box-sizing: border-box;
}

#explanation>#tier>p {
	width: 100%;
	height: 30px;
	line-height: 30px;
	font-size: 30px;
	text-align: center;
	margin: 30px 0px;
}

#explanation>#tier>.tierGraph, .tierGraph2 {
	width: 95%;
	height: 50px;
	line-height: 50px;
	background: #555;
	margin: 0 auto;
	background: #555;
	margin-bottom: 20px;
}

#explanation>#tier>.tierGraph>li {
	width: 10%;
	height: 100%;
	text-align: center;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	float: left;
	border: 1px solid black;
	box-sizing: border-box;
}

#explanation>#tier>.tierGraph2>li {
	width: 50%;
	height: 100%;
	text-align: center;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	float: left;
	border: 1px solid black;
	box-sizing: border-box;
}

#explanation>#tier>.tierGraph2>.iron {
	width: 50%;
	float: left;
	background: #555;
	height: 100%;
	text-align: center;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	float: left;
}

#explanation>#tier>.tierGraph2>.bronze {
	width: 25%;
	float: left;
	background: brown;
	height: 100%;
	text-align: center;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	float: left;
}

#explanation>#tier>.tierGraph2>.silver {
	width: 15%;
	float: left;
	background: #ccc;
}

#explanation>#tier>.tierGraph2>.gold {
	width: 10%;
	float: left;
	background: gold;
}

#explanation>#tier>.tierGraph>.platinum {
	width: 31%;
	float: left;
	background: #fff;
	color: #ccc;
}

#explanation>#tier>.tierGraph>.emerald {
	width: 25%;
	float: left;
	background: yellowGreen;
}

#explanation>#tier>.tierGraph>.aquamarine {
	width: 18%;
	float: left;
	background: aquamarine;
}

#explanation>#tier>.tierGraph>.topaz {
	width: 13%;
	float: left;
	background: orange;
}

#explanation>#tier>.tierGraph>.ruby {
	width: 8%;
	float: left;
	background: red;
}

#explanation>#tier>.tierGraph>.diamond {
	width: 5%;
	float: left;
	background: skyblue;
	font-size: 10px;
}

#text {
	width: 100%;
	height: 200px;
	background: #fff;
	padding: 40px;
	box-sizing: border-box;
}

#tierIcon {
	width: 100%;
	margin: 20px auto;
}

#tierIcon>.hiddenWrap {
	width: 1240px;
	margin: 0 auto;
	overflow: hidden;
}

#tierIcon>.hiddenWrap>.icon {
	width: 100%;
	height: 700px;
	position: relative;
}

#tierIcon>.hiddenWrap>.icon>div {
	width: 100%;
	position: absolute;
	top: 0;
	left: 0;
	font-size: 300px;
	height: 700px;
	text-align: center;
	background: #fff;
	padding: 100px;
	box-sizing: border-box;
}

#tierIcon>.hiddenWrap>.icon>div>.p1 {
	width: 100%;
	height: 300px;
	font-size: 300px;
	text-align: center;
}

#tierIcon>.hiddenWrap>.icon>div>.p2 {
	width: 100%;
	height: 300px;
	font-size: 100px;
	text-align: center;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(1)>p {
	color: skyblue;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(2)>p {
	color: red;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(3)>p {
	color: orange;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(4)>p {
	color: aquamarine;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(5)>p {
	color: yellowGreen;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(6)>p {
	color: #fff;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(7)>p {
	color: gold;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(8)>p {
	color: #ccc;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(9)>p {
	color: brown;
}

#tierIcon>.hiddenWrap>.icon>div:nth-of-type(10)>p {
	color: #555;
}

#iconNav {
	width: 100%;
	height: 50px;
	background: red;
}

#iconNav>li {
	width: 10%;
	height: 100%;
	float: left;
	text-align: center;
	color: #fff;
	line-height: 50px;
	font-weight: bold;
	cursor: pointer;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

#session2 {
	width: 100%;
}

#physical {
	width: 95%;
	height: 1300px;
	background: #cf5151;
	margin: 0 auto;
	position: relative;
	padding: 30px;
	box-sizing: border-box;
}

#physical>.test {
	display: block;
	transition: all 0.5s;
	width: 150px;
	height: 50px;
	line-height: 50px;
	background: #ffdcdc;
	text-align: center;
	margin: 30px auto;
	border-radius: 20px;
}

#physical>.test:hover {
	color: #fff;
}


#physical>.judge {
	display: block;
	transition: all 0.5s;
	width: 200px;
	height: 50px;
	line-height: 50px;
	background: #ffdcdc;
	text-align: center;
	margin: 30px auto;
	border-radius: 20px;
}

#physical>.judge:hover {
	border-bottom: 0.5px solid #fff;
	color: #fff;
}

#table {
	width: 95%;
	margin: 0 auto;
}

#table>.table {
	width: 100%;
	height: 100%;
}

#table>p{
	width: 100%;
	font-size: 30px;
	margin-bottom: 20px;
	text-align: center; 
}

#table>.table>li {
	height: 90px;
	border: 0.5px solid black;
	box-sizing: border-box;
}

#table>.table>li:nth-of-type(odd) {
	width: 20%;
	background: #ccc;
	float: left;
	text-align: center;
	line-height: 90px;
	font-size: 20px;
	color: #555;
}

#table>.table>li:nth-of-type(even) {
	width: 80%;
	background: #ccc;
	float: left;
	padding: 10px;
	box-sizing: border-box;
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
			<div id="explanation">
				<div id="tier">
					<p>티어 그래프</p>
					<ul class="tierGraph after">
						<li class="diamond">diamond (0.1%)</li>
						<li class="ruby">ruby (0.2%)</li>
						<li class="topaz">topaz (0.25%)</li>
						<li class="aquamarine">aquamarine (0.5%)</li>
						<li class="emerald">emerald (1%)</li>
						<li class="platinum">platinum (2%)</li>
					</ul>
					<ul class="tierGraph2 after">
						<li class="gold">gold (5%)</li>
						<li class="silver">silver (10%)</li>
						<li class="bronze">bronze (30%)</li>
						<li class="iron">iron (50%)</li>
					</ul>
					<div id="text">
						<p>
							티어 선정 기준표 <br> 1. 헌혈증 기준 수 (40%)<br> 2. 헌혈증 보유수 (헌혈증 등록
							빈도 30%)<br> 3. 의료적 필요 대상자 (15%)<br> 4. 사회적 약자 (10%)<br>
							5. 국자 유공자 (3%)<br> 6. 사회적 영향도 (2%)
						</p>
					</div>

					<div id="tierIcon">
						<div class="hiddenWrap">
							<ul id="iconNav" class="after">
								<li>Diamond</li>
								<li>Ruby</li>
								<li>Topaz</li>
								<li>Aquamarine</li>
								<li>Emerald</li>
								<li>Platinum</li>
								<li>Gold</li>
								<li>Silver</li>
								<li>Bronze</li>
								<li>Iron</li>
							</ul>
							<div class="icon">
								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Diamond</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Ruby</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Topaz</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Aquamarine</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Emerald</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Platinum</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Gold</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Silver</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Bronze</p>
								</div>

								<div class="diamond">
									<p class="p1">
										<i class="fas fa-tint"></i>
									</p>
									<p class="p2">Iron</p>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<div id="session2">
			<div id="physical">
				<div id="table">
					<p>헌혈 조건</p>
					<ul class="table after">
						<li>나이</li>
						<li><br>전혈헌혈 : 만 16 ~ 69세 혈장성분헌혈: 만 17 ~ 69세 혈소판성분헌혈, 혈소판혈장성분헌혈 :
							만 17 ~ 59세</li>
						<li>체중</li>
						<li><br>남자 50kg 이상 여자 45kg 이상</li>
						<li>건강진단</li>
						<li><br>혈압(mmHg) : 수축기 90~179, 이완기 100 미만 체온(℃) : 37.5℃ 이하
							맥박(회/분) : 50~100</li>
						<li>헐핵간격</li>
						<li><br>전혈헌혈 : 8주 경과 혈장성분헌혈, 혈소판성분헌혈, 혈소판혈장성분헌혈 : 14일 경과</li>
						<li>헌혈횟수</li>
						<li><br>전혈헌혈 : 과거 1년 이내에 전혈헌혈횟수 5회 혈소판성분헌혈, 혈소판혈장성분헌혈 : 과거 1년 이내에
							성분헌혈횟수 24회</li>
						<li>질병</li>
						<li><br>감염병 완치 후 일정기간 경과 기타 질병 완치 후 일정기간 경과</li>
						<li>약물</li>
						<li>건선 치료제 복용 후 3년 경과(일부는 영구 헌혈금지) 전립선비대증 치료제 복용 후 4주 또는 6개월<br>
							경과 탈모증 치료제 복용 후 4주 경과 <br> 여드름 치료제 복용 후 4주 경과 기타 헌혈금지약물 복용 후 일정기간 경과</li>
						<li>예방접종</li>
						<li>인플루엔자, A형간염, 일본뇌염(사백신) 등 예방접종 받은날로부터 24시간 경과 <br> B형 간염 예방접종 후
							2주 경과 <br> 홍역, 유행성이하선염, 풍진(MMR)의 혼합백신, 수두 등 예방접종 받은날로부터 4주 경과</li>
						<li>진료</li>
						<li><br>수혈 후 1년 경과 기타 진료 후 일정기간 경과 ※ 임신 중인자, 분만 또는 유산 후 6개월 이내인
							자는 헌혈에 참여하실 수 없습니다.</li>
						<li>검사결과</li>
						<li><br>과거 헌혈검사(B형간염, C형간염, 매독검사 등) 결과 정상</li>
						<li>기타</li>
						<li>문진 결과 헌혈 적합에 해당 고교생의 경우 학생증에 사진, 성명, 주민번호 앞자리가 모두 나와야하며,<br>
							사진과 성명은 있으나 주민등록번호 앞자리가 없거나 사진만 있고 성명 또는 주민등록번호 앞자리가 없는 경우 학생증과
							기타서류가 필요합니다.<br> (※ 기타서류 : 성명과 주민등록번호가 기재되어 있는 주민등록등·초본, 의료보험증 등
							공공기관에서 발행한 서류를 말하며, 기타 서류 미지참시 채혈 보류)</li>
					</ul>
				</div>
				<a href="http://localhost:8099/loan/interview" class="test">전자 문진 하러 가기 </a>
			</div>
		</div>
	
	</div>

</body>
</html>