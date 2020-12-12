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
@import url('https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap');

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
	height: 1000px;
}

#banner {
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: relative;
}

#right, #left{
	width: 50px;
	height: 50px;
	position: absolute;
	top: 50%;
	background: #ccc;
	border-radius : 50%;
	text-align: center;
	line-height: 50px;
	cursor: pointer;
	transition : all 0.5s;
}

#right{
	right: 3%;
}

#left{
	left: 3%;
}

#right:hover{
	width: 100px;
	border-radius : 20px;
	text-align: right;
	padding-right: 15px;
	box-sizing: border-box;
}

#left:hover{
	width: 100px;
	border-radius : 10px;
	text-align: left;
	padding-left: 15px;
	box-sizing: border-box;
}

#right>p{
	display: none;
	text-align: center;
	margin-right: 20px;
	transition : all 0.5s;
}

#right:hover>p{
	display: inline-block;
}

#left>p{
	display: none;
	text-align: center;
	margin-left: 20px;
	transition : all 0.5s;
}

#left:hover>p{
	display: inline-block;
}



#dotted{
	width: 30%;
	height: 16px;
	position: absolute;
	bottom: 50px;
	left: 50%;
	transform: translateX(-50%);
}

#dotted>li{
	width: 33.3333%;
	height : 100%;
	float: left;
}

#dotted>li>a{
	display: block;
	width: 16px;
	height: 100%;
	border-radius: 50%;
	background: #ccc;
	margin: 0 auto;
}

#visual {
	width: 300%;
	height: 100%;
	margin-left: -100%;
}

#visual>li {
	width: 33.3333%;
	height: 100%;
	float: left;
	position: relative;
}

#visual>li>a {
	display: block;
	width: 80%;
	height: 60%;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

#visual>li>a>img {
	width: 100%;
	height: 100%;
}



#session2 {
	width: 100%;
	height: 700px;
}

#graph {
	width: 50%;
	height: 100%;
	background: #ffdcdc;
	position: relative;
	float: left;
	border-right: 3px dotted black;
	box-sizing: border-box;
}

#graph>.graphwrap {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	height: 80%;
	
}

#graph>.graphwrap>.graphshaft {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	height: 80%;
	border: 1px solid black;
	border-right: none;
	border-top: none;
	box-sizing: border-box;
}

#graph>.graphwrap>.graphshaft>.userwrap {
	width: 100%;
	height: 100%;
	position: relative;
}

#user1, #user2, #user3, #user4, #user5 {
	display: inline-block;
	width: 50px;
	height: 50px;
	background: #cf5151;
	position: absolute;
	bottom: 0px;
	transition: all 2s;
	text-align: center;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	color: #fff;
}

#user1 {
	left: 50px;
}

#user2 {
	left: 150px;
}

#user3 {
	left: 250px;
}

#user4 {
	left: 350px;
}

#user5 {
	left: 450px;
}

#graph>.graphwrap>.user {
	width: 70%;
	position: absolute;
	bottom: 30px;
	left: 100px;
}

#graph>.graphwrap>.user>li {
	width: 20%;
	float: left;
	text-align: center;
}

#graph2 {
	width: 50%;
	height: 100%;
	background: #f4a6a6;;
	position: relative;
	float: left;
}

#graph2>.graphwrap {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	height: 80%;
}

#graph2>.graphwrap>.graphshaft {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 80%;
	height: 80%;
	border: 1px solid black;
	border-right: none;
	border-top: none;
	box-sizing: border-box;
}

#graph2>.graphwrap>.graphshaft>.userwrap {
	width: 100%;
	height: 100%;
	position: relative;
}

#user11, #user22, #user33, #user44, #user55 {
	display: inline-block;
	width: 50px;
	height: 50px;
	background: #cf5151;
	position: absolute;
	bottom: 0px;
	transition: all 2s;
	text-align: center;
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
	color: #fff;
	box-sizing: border-box;
}

#user11 {
	left: 50px;
}

#user22 {
	left: 150px;
}

#user33 {
	left: 250px;
}

#user44 {
	left: 350px;
}

#user55 {
	left: 450px;
}

#graph2>.graphwrap>.user {
	width: 70%;
	position: absolute;
	bottom: 30px;
	left: 100px;
}

#graph2>.graphwrap>.user>li {
	width: 20%;
	float: left;
	text-align: center;
}

#userimpo {
	width: 100%;
	height: 100%;
	background: orange;
}

#userimpo>.pic {
	width: 230px;
	height: 100%;
	float: left;
}

#userimpo>.pic>img {
	width: 80%;
	height: 100%;
}

#userimpo>.text {
	width: 180px;
	height: 100%;
	float: left;
	padding: 10px;
	box-sizing: border-box;
}

#userimpo>.text>p {
	color: #fff;
	margin: 5px 0;
}


</style>

	<script type="text/javascript">
		$(window).scroll(function() {
			var scroll = window.scrollY;
			console.log(scroll);
			if(scroll <= 800) {
				$("#user1").css({
					"height" : "5px"
				});
				$("#user2").css({
					"height" : "5px"
				});
				$("#user3").css({
					"height" : "5px"
				});
				$("#user4").css({
					"height" : "5px"
				});
				$("#user5").css({
					"height" : "5px"
				});

				$("#user11").css({
					"height" : "5px"
				});
				$("#user22").css({
					"height" : "5px"
				});
				$("#user33").css({
					"height" : "5px"
				});
				$("#user44").css({
					"height" : "5px"
				});
				$("#user55").css({
					"height" : "5px"
				});
				
			}
			
			if (scroll >= 800) {

				var user1 = ${applicationScope.bestgiver[0].donationcnt};
				var user2 = ${applicationScope.bestgiver[1].donationcnt};
				var user3 = ${applicationScope.bestgiver[2].donationcnt};
				var user4 = ${applicationScope.bestgiver[3].donationcnt};
				var user5 = ${applicationScope.bestgiver[4].donationcnt};

				var user2shaft = (90 * user2) / user1;
				var user3shaft = (90 * user3) / user1;
				var user4shaft = (90 * user4) / user1;
				var user5shaft = (90 * user5) / user1;

				
				
				
				$("#user1").css({
					"height" : "90" + "%"
				});
				$("#user2").css({
					"height" : user2shaft + "%"
				});
				$("#user3").css({
					"height" : user3shaft + "%"
				});
				$("#user4").css({
					"height" : user4shaft + "%"
				});
				$("#user5").css({
					"height" : user5shaft + "%"
				});

				var user11 = ${applicationScope.cardcnt[0].count};

				var user22 = ${applicationScope.cardcnt[1].count};
				var user33 = ${applicationScope.cardcnt[2].count};
				var user44 = ${applicationScope.cardcnt[3].count};
				var user55 = ${applicationScope.cardcnt[4].count};

				var user22shaft = (90 * user22) / user11;
				var user33shaft = (90 * user33) / user11;
				var user44shaft = (90 * user44) / user11;
				var user55shaft = (90 * user55) / user11;

				$("#user11").css({
					"height" : "90" + "%"
				});
				$("#user22").css({
					"height" : user22shaft + "%"
				});
				$("#user33").css({
					"height" : user33shaft + "%"
				});
				$("#user44").css({
					"height" : user44shaft + "%"
				});
				$("#user55").css({
					"height" : user55shaft + "%"
				});

			}

		});

		$(document).ready(function() {

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

			$("#Loginbtn").on("click", function() {
				$(this).submit();
			})

			$("#login>.wrap1>a").on("mouseover", function() {
				$(this).css({
					"border-bottom" : "0.2px solid #fff",
					"box-sizing" : "border-box"
				})
			})

			$("#login>.wrap1>a").on("mouseleave", function() {
				$(this).css({
					"border-bottom" : "none"
				})
			})

			timerId = setInterval(slidevisual, 7000);

			$("#right").on("mouseleave",function(){
				timerId = setInterval(slidevisual, 7000);
			});
			
			$("#left").on("mouseleave",function(){
				timerId = setInterval(slidevisual, 7000);
			});
			
			
			$("#right").on("mouseover",function(){
				clearInterval(timerId);
			});

			$("#left").on("mouseover",function(){
				clearInterval(timerId);
			});

			$("#right").on("click",function(){
				clearInterval(timerId);
				slidevisual()
			});

			$("#left").on("click",function(){
				clearInterval(timerId);
				slidevisual2()
			});

			function slidevisual() {

				var ease = "easeInOutExpo";
				
				
				$('#visual').animate({
					'margin-left' : '-200%'
				},2000,ease, function() {
					$("#visual>li").first().appendTo("#visual");
					$("#visual").css({
						"margin-left" : "-100%"
					});
				});

			}

			function slidevisual2() {
				$('#visual').animate({
					'margin-left' : '0%'
				}, 2000, 'swing', function() {
					$("#visual>li").last().prependTo("#visual");
					$("#visual").css({
						"margin-left" : "-100%"
					});
				});

			}

			
				

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
			<div id="banner">
				<ul id="visual" class="after">
					<li class="img1"><a href="#"> <img alt="#"
							src="/img/visual1.png">
					</a></li>
					<li class="img2"><a href="#"> <img alt="#"
							src="/img/visual2.jpg">
					</a></li>
					<li class="img3"><a href="#"> <img alt="#"
							src="/img/visual3.jpg">
					</a></li>
					<li class="img1"><a href="#"> <img alt="#"
							src="/img/visual1.png">
					</a></li>
					<li class="img2"><a href="#"> <img alt="#"
							src="/img/visual2.jpg">
					</a></li>
					<li class="img3"><a href="#"> <img alt="#"
							src="/img/visual3.jpg">
					</a></li>
				</ul>
				<div id="right">
				<p>slide</p>
				<i class="fas fa-chevron-right"></i>
				</div>
				<div id="left">
				<i class="fas fa-chevron-left"></i>
				<p>slide</p>
				
				</div>
				
				<ul id="dotted" class="after">
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
				</ul>
				
			</div>
		</div>

		<div id="session2">
			<div id="graph">
				<div class="graphwrap">
					<h1>기부 순위</h1>
					<div class="graphshaft">
						<div class="userwrap">
							<div id="user1">${applicationScope.bestgiver[0].donationcnt}</div>
							<div id="user2">${applicationScope.bestgiver[1].donationcnt}</div>
							<div id="user3">${applicationScope.bestgiver[2].donationcnt}</div>
							<div id="user4">${applicationScope.bestgiver[3].donationcnt}</div>
							<div id="user5">${applicationScope.bestgiver[4].donationcnt}</div>
						</div>

					</div>

					<ul class="user">
						<li>${applicationScope.bestgiver[0].name}</li>
						<li>${applicationScope.bestgiver[1].name}</li>
						<li>${applicationScope.bestgiver[2].name}</li>
						<li>${applicationScope.bestgiver[3].name}</li>
						<li>${applicationScope.bestgiver[4].name}</li>
					</ul>
				</div>
			</div>

			<div id="graph2">
				<div class="graphwrap">
					<h1>보유 순위</h1>
					<div class="graphshaft">
						<div class="userwrap">
							<div id="user11">${applicationScope.cardcnt[0].count}</div>
							<div id="user22">${applicationScope.cardcnt[1].count}</div>
							<div id="user33">${applicationScope.cardcnt[2].count}</div>
							<div id="user44">${applicationScope.cardcnt[3].count}</div>
							<div id="user55">${applicationScope.cardcnt[4].count}</div>
						</div>

					</div>

					<ul class="user">
						<li>${applicationScope.cardcnt[0].name}</li>
						<li>${applicationScope.cardcnt[1].name}</li>
						<li>${applicationScope.cardcnt[2].name}</li>
						<li>${applicationScope.cardcnt[3].name}</li>
						<li>${applicationScope.cardcnt[4].name}</li>
					</ul>
				</div>
			</div>
		</div>

	</div>

</body>
</html>