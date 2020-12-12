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
<title>usermody</title>
</head>
<body>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#joinbtn").on("click", function() {
				var name = $("#name").val();
				var id = $("#id").val();
				var pw = $("#pw").val();
				var pwcheck = $("#pwcheck").val();
				var userno = $("#userno").val();
				var blood = $("#blood").val();

				if (name == "") {
					alert("이름을 입력하세요");
					$("#name").focus();
				} else if (id == "") {
					alert("id를 입력하세요");
					$("#id").focus();
				} else if (pw == "") {
					alert("pw를 입력하세요");
					$("#pw").focus();
				} else if (pwcheck == "") {
					alert("pw 확인이 필요 합니다");
					$("#pwcheck").focus();
				} else if (userno == "") {
					alert("userno를 입력하세요");
					$("#userno").focus();
				} else if (blood == "") {
					alert("혈액형을 입력하세요");
					$("#blood").focus();
				} else if (pw != pwcheck) {
					alert("PW 확인을 다시 해주세요");
					$("#pw").focus();
				} else {
					var form = $('#joinform');
					form.submit();
				}

			})

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

		function checkpw() {
			var inputpw = $("#passcheck").val();
			var userpw = "${sessionScope.loginedUser.password}";

			if (inputpw == userpw) {
				$("#join").addClass("on");
				$(".password").removeClass("on");
			} else {
				alert("비밀 번호가 틀립니다.");
			}
		}
	</script>


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

#joinwrap {
	width: 100%;
	height: 100%;
	float: left;
	position: relative;
	background: linear-gradient(to top left, #ffdcdc, #fff);
}

#join {
	width: 500px;
	height: 600px;
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #ccc;
	padding: 30px;
	box-sizing: border-box;
	text-align: center;
	background: #fff;
	display: none;
}

#join.on {
	display: block;
}

#join>h1 {
	margin-bottom: 30px;
	font-size: 40px;
}

#join>form {
	width: 100%;
	text-align: center;
	margin-bottom: 20px;
}

#join>form>input {
	display: block;
	margin: 0 auto;
	margin-top: 20px;
	width: 200px;
	border-style: none;
	outline-style: none;
	border-bottom: 2px dotted #222;
	line-height: 30px;
}

#joinbtn, #passcheckbtn {
	display: block;
	width: 200px;
	height: 30px;
	background: #4c4c4c;
	color: #fff;
	border-radius: 10px;
	margin: 0 auto;
	margin-top: 20px;
	cursor: pointer;
}

.password {
	width: 500px;
	height: 600px;
	position: absolute;
	top: 60%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #ccc;
	padding: 30px;
	box-sizing: border-box;
	text-align: center;
	background: #fff;
	display: none;
}

.password.on {
	display: block;
}

.password>p {
	margin: 30px 0px;
	color: #4c4c4c;
	font-size: 30px;
}

#passcheck {
	width: 250px;
	line-height: 30px;
}

#loanp {
	display: block;
	margin: 10px 0px;
}

#loan {
	width: 200px;
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

	<div id="joinwrap">



		<div id="title">
			<p>계정 관리</p>
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




		<div id="join">
			<h1>계정 관리</h1>
			<form id="joinform" action="http://localhost:8099/users/usermodify"
				method="">
				<input id="name" type="text" name="name" placeholder="이름을 입력하세요">
				<input id="id" type="text" name="Userid" placeholder="id를 입력하세요">
				<input id="pw" type="password" name="password"
					placeholder="PW를 입력하세요"> <input id="pwcheck"
					type="password" name="passwordchek" placeholder="PW 재확인"> <input
					id="userno" type="text" name="userno" placeholder="생년월일을 입력하세요">
				<input id="blood" type="text" name="bloodgroup"
					placeholder="혈액형을 입력하세요">
				<p id="loanp">대출 허용 여부</p>
				<select name="loan" id="loan">
					<option value="1">허용</option>
					<option value="0">불허용</option>
				</select>
			</form>
			<button id="joinbtn">수정하기</button>
		</div>

		<div class="password on">
			<p>
				개인 정보 보호를 위해 <br> 비밀번호 재 확인이 필요 합니다.
			</p>
			<input id="passcheck" type="password" name="passcheck"
				placeholder="비밀 번호를 입력하세요">
			<button id="passcheckbtn" onclick="checkpw();">확인</button>
		</div>

	</div>
</body>
</html>