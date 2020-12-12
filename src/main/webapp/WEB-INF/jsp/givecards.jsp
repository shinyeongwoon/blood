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
<title>List</title>
</head>
<body>
	<script type="text/javascript">
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

	<style>
@import url('https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display=swap');
@font-face {
     font-family: 'S-CoreDream-4Regular';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-4Regular.woff') format('woff');
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

#logo {
	width: 100%;
	height: 15%;
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
}

#logo>a>span {
	font-weight: bolder;
}

#title {
	width: 40%;
	height: 60px;
	background: #cf5151;
	position: absolute;
	top: 200px;
}

#title>p {
	color: #fff;
	font-size: 30px;
	line-height: 60px;
	margin-left: 100px;
	font-weight: bold;
}

#cards {
	width: 100%;
	height: 100%; float : left;
	position: relative;
	background: linear-gradient(to top left, #ffdcdc, #fff);
	float: left;
}

#userimpo {
	width: 300px;
	height: 100px;
	background: #555;
	position: absolute;
	top: 180px;
	right: 10%;
}

#userimpo>.pic {
	width: 100px;
	height: 100%;
	float: left;
}

#userimpo>.pic>img {
	width: 80%;
	height: 100%;
}

#userimpo>.text {
	width: 200px;
	height: 100%;
	float: left;
	padding: 10px;
	box-sizing: border-box;
}

#userimpo>.text>p {
	color: #fff;
	margin: 5px 0;
}

#cardlist {
	width: 1240px;
	margin: 0 auto;
	margin-top: 150px;
}

#givebtn {
	position: absolute;
	top: 350px;
	right: 150px; display : block;
	width: 100px;
	height: 30px;
	background: #4c4c4c;
	margin-left: 40px;
	color: #fff;
	border-radius: 10px;
	display: block;
}

#cardlist>form>p {
	display: block;
	width: 19%;
	height: 150px;
	margin-right: 1%;
	margin-bottom: 20px;
	box-sizing: border-box;
	float: left;
	background: #fff;
}

#cardlist>form>p:nth-of-type(5n) {
	margin-right: 0%;
}

#cardlist>form>p>.cardno {
	display: block;
	width: 100%;
	height: 20%;
	background: blue;
	padding: 5px;
	box-sizing: border-box;
	color: #fff;
}

#cardlist>form>p>.cardtext {
	display: block;
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}

#openname{
	position: absolute;
	top: 330px;
	right: 170px;
}

</style>

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
						<li><a href="http://localhost:8099/article/usermody"> 계정 관리 </a></li>

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

	<div id="cards">

		<div id="userimpo">
			<div class="pic">
				<img alt="불러오기 실패" src="/img/user.jpg">
			</div>

			<div class="text">
				<p class="username">이름 : ${loginedUser.name}</p>
				<p class="userid">ID : ${loginedUser.userid}</p>
				<p class="cardcnt">card 수 : ${cardCnt}</p>
			</div>

		</div>

		<div id="title">
			<p>카드 리스트</p>
		</div>

		<div id="logo">
			<a href="http://localhost:8099/article/main"> 우리<span>헌혈</span>해요
			</a>
			<ul id="topnav">
				<li><a href="#"><i class="far fa-user-circle"></i></a></li>
				<li><a href="#" id="ham" onclick="navslide();"><i
						class="fas fa-bars"></i></a></li>
			</ul>

		</div>



		<div id="cardlist">

			<form id="giveform" action="http://localhost:8099/card/dogive"
				method="post">
				<input type="hidden" name="giver"
					value="${applicationScope.giverId}"> <input type="hidden"
					name="receiver" value="${applicationScope.receiverId}">

				<c:forEach var="card" items="${cards}" varStatus="status">
					<p>
						<a href="http://localhost:8099/card/cardview?cardid=${card.id}"
							class="cardno"> card No : ${card.cardno} <input
							type="checkbox" name="checkbox" value="${card.id}">
						</a> <a href="http://localhost:8099/card/cardview?cardid=${card.id}"
							class="cardtext"> 등록일 : ${card.cdate} <br> 혈액형 :
							${card.cbg} <br> 헌혈 종류: ${card.kind}
						</a>

					</p>
				</c:forEach>
				<div id="openname">
					<label for="fruitItem">익명 기부</label> <input type="checkbox"
						name="openname" value="no">
				</div>
			</form>
			<button id="givebtn" onclick="dogive();">기증하기</button>
		</div>
		<script type="text/javascript">
			function dogive() {
				giveform.submit();
			}
		</script>

	</div>

</body>
</html>