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
<title>login</title>
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
	position: fixed;
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

#add {
	width: 100%;
	height: 100%;
	float: left;
	position: relative;
	background: linear-gradient(to top left, #ffdcdc, #fff);
}

#box {
	width: 1000px;
	height: 600px;
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #fff;
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

#box>.wrap {
	padding: 40px;
}

#box>.wrap>p {
	text-align: center;
	margin-bottom: 50px;
}

#box>.wrap>p>.s1 {
	display: block; font-size : 30px;
	text-decoration: underline;
	text-align: center;
	margin-bottom: 20px;
	font-size: 30px;
}

#box>.wrap>p>.s2 {
	display: block;
	font-size: 20px;
	text-align: center;
	margin-bottom: 20px;
	font-weight: bold;
}

#box>.wrap>form {
	display: block;
	width: 50%;
	height: 100px;
	margin: 0 auto;
	margin-bottom: 30px;
}

#box>.wrap>form>input {
	display: block;
	width: 300px;
	line-height: 30px;
	margin: 0 auto;
	margin-bottom: 20px;
}

#loginbtn{
	display : block;
	width: 300px;
	height: 50px;
	margin : 0 auto;
	margin-bottom: 30px;
	background: #4c4c4c;
	color: #fff;
}


#join{
	display: block;
	text-decoration: underline;
	position: absolute;
	bottom: 50px;
	right: 50px;
	transition: all 0.5s;
}

#join:hover{
	color: #ff7979;
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

	<div id="add">

		<div id="title">
			<p>로그인</p>
		</div>

		<div id="logo">
			<a href="http://localhost:8099/article/main">
				우리<span>헌혈</span>해요
			</a>
			<ul id="topnav">
				<li><a href="#"><i class="far fa-user-circle"></i></a></li>
				<li><a href="#" id="ham" onclick="navslide();"><i
						class="fas fa-bars"></i></a></li>
			</ul>

		</div>

		<div id="box" class="after">

			<div class="wrap">

				<p class='text'>
					<span class="s1"> 헌혈해요 홈페이지에 <br>
					</span> <span class="s2"> 방문해 주셔서 감사합니다!<br>
					</span> 한마음혈액원은 고객님의 정보를 소중하게 생각합니다.<br> 일부 서비스는 로그인 후 이용 가능합니다.
				</p>

				<form id="dologinform" action="http://localhost:8099/users/dologin"
					method="post">

					<input id="id" type="text" placeholder="ID를 입력하세요." name="id">
					<input id="pw" type="password" placeholder="PW를 입력하세요." name="pw">

				</form>

				<button id="loginbtn" onclick="login();">Login</button>


				<a id="join" href="http://localhost:8099/users/join">회원가입 하러가기</a>

			</div>


			<script type="text/javascript">
				function login() {

					var inputid = $("#id").val();
					var inputpw = $("#pw").val();

					if (inputid == "") {
						alert("ID를 입력하세요");
					} else if (inputpw == "") {
						alert("pw를 입력하세요");
					} else {
						$("#dologinform").submit();
					}

				}
			</script>

		</div>

	</div>

</body>
</html>