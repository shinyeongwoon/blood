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
<title>add</title>
</head>
<body>

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

					$("#barcode").on("click", function() {
						$("#box>.tap>.tapbtn").removeClass('on');
						$("#barcode").addClass('on');
						$("#box>.content").removeClass('on');
						$("#content1").addClass('on');
					})

					$("#direct").on("click", function() {
						$("#box>.tap>.tapbtn").removeClass('on');
						$("#direct").addClass('on');
						$("#box>.content").removeClass('on');
						$("#content2").addClass('on');

					})

					var loginedUser = "${loginedUser.id}";
					if (loginedUser == "") {
						alert("로그인해주세요 :: 입력 정보 오류");
					} else {
						var userid = "${loginedUser.userid}";
						$("#useridimpo").val(userid);
						$("#userid1").val(userid);
						$("#userid").val(userid);
					}

					$("#cardno1").change(function() {
						var cardno = $("#cardno1").val();
						cardnochek(cardno);
					})

					$("#cbg1").change(function() {
						var cbg = $("#cbg1").val();
						bloodgroupcheck(cbg);
					})

					$("#inputd").change(
							function() {
								var bdate = $("#inputy").val()
										+ $("#inputm").val()
										+ $("#inputd").val();

								bdatecheck(bdate);
							})

					$("#location1").change(function() {
						var location = $("#location1").val();
						locationcheck(location);
					})

					$("#sex1").change(function() {
						var sex = $("#sex1").val();
						sexcheck(sex);
					})

					$("#inputbd").change(
							function() {
								var by = $("#inputby").val();
								var newby = by.substring(2, 4);
								var bbirth = newby + $("#inputbm").val()
										+ $("#inputbd").val();
								console.log(bbirth);
								bbirthcheck(bbirth);
							})

				})

		function splitString() {
			var barcodeImpo = $("#barcodeinput").val();
			var impoSplit = barcodeImpo.split('-');

			var cardno = impoSplit[0];
			var cbg = impoSplit[1];
			var location = impoSplit[2];
			var bdate = impoSplit[3];
			var sex = impoSplit[4];
			var kind = impoSplit[5];
			var bname = impoSplit[6];
			var bbirth = impoSplit[7];

			if (cardno == "") {
				alert("barcode 형식을 확인 해 주세요 1 :: 입력 정보 오류");
			} else if (cbg == null) {
				alert("barcode 형식을 확인 해 주세요 2 :: 입력 정보 오류");
			} else if (location == null) {
				alert("barcode 형식을 확인 해 주세요 3 :: 입력 정보 오류");
			} else if (bdate == null) {
				alert("barcode 형식을 확인 해 주세요 4 :: 입력 정보 오류");
			} else if (sex == null) {
				alert("barcode 형식을 확인 해 주세요 5 :: 입력 정보 오류");
			} else if (kind == null) {
				alert("barcode 형식을 확인 해 주세요 6 :: 입력 정보 오류");
			} else if (bname == null) {
				alert("barcode 형식을 확인 해 주세요 7 :: 입력 정보 오류");
			} else if (bbirth == null) {
				alert("barcode 형식을 확인 해 주세요 8 :: 입력 정보 오류");
			} else {

				/*  card no 제약조건 걸기 */
				cardnochek(cardno);

				/*  핼액형 검사 제약 조건 걸기 */
				bloodgroupcheck(cbg);

				/*  지역 검사 제약 조건 걸기*/
				locationcheck(location);

				/* b date 제약 조건 */
				bdatecheck(bdate);

				/* sex 제약 조건  */
				sexcheck(sex);

				/* kind 제약 조건  */
				kinecheck(kind);

				/*  bname 제약 조건 */
				bnamecheck(bname);

				/*  bbirht 제약 조건*/
				bbirthcheck(bbirth);
			}

		}

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

		function useridinput() {
			var loginedUser = "${loginedUser.id}";
			if (loginedUser == "") {
				alert("로그인해주세요 :: 입력 정보 오류");
			} else {
				var userid = "${loginedUser.userid}";
				$("#useridimpo").val(userid);
				$("#userid2").val(userid);
			}
		}

		function cardnochek(target) {
			var nocheck = target.search(/[0-9]/g);
			var alcheck = target.search(/[a-z]/ig);

			if (nocheck == 0 && alcheck < 0) {
				$("#cardno").val(target);
			} else {
				alert("cardno 는 숫자만 입력이 가능합니다.");
			}
		}

		function bloodgroupcheck(cbg) {

			var bloodcheck = cbg.length;

			if (bloodcheck > 2) {
				alert("혈액형을 확인하세요.");
			} else {
				if (cbg == "A" || cbg == "B" || cbg == "O" || cbg == "AB") {
					$("#cbg").val(cbg);
				} else {
					alert("입력할 수 없는 혈액형입니다.");
				}
			}
		}

		function locationcheck(location) {
			var locationSelect = [ '서울', '경기', '강원', '충북', '충남', '경북', '경남',
					'전북', '전남', '제주', '인천', '대구', '세종', '부산' ];

			var locatecheck = 0;

			for (var i = 0; i < locationSelect.length; i++) {
				if (locationSelect[i] == location) {
					locatecheck = 1;
					break;
				}
			}

			if (locatecheck == 0) {
				alert("입력할 수 없는 지역입니다.");
			} else {
				$("#location").val(location);
			}
		}

		function bdatecheck(bdate) {
			let today = new Date();
			var days = today.toLocaleDateString('kr');

			var D = days.split('.');

			var nowDate = D[0].trim() + D[1].trim() + D[2].trim();

			var datenocheck = bdate.search(/[0-9]/g);
			var datealcheck = bdate.search(/[a-z]/ig);

			if (datenocheck == 0 && datealcheck < 0) {
				if (bdate.length == 8) {
					if (nowDate > bdate) {
						$("#bdate").val(bdate);
						$("#bdate1").val(bdate);
					} else {
						alert("bdate 미래일수 없습니다.");
					}

				} else {
					alert("bdate 입력형식은 yyyymmdd 입니다.");
				}

			} else {
				alert("bdate 는 숫자만 입력이 가능합니다.");
			}

		}

		function sexcheck(sex) {
			var sexarray = [ 'M', 'F', 'X' ];

			var sexcheck = 0;

			for (var i = 0; i < sexarray.length; i++) {
				if (sexarray[i] == sex) {
					sexcheck = 1;
					break;
				}
			}

			if (sexcheck == 0) {
				alert(" M F X 만 입력 가능합니다.");
			} else {
				$("#sex").val(sex);
			}
		}

		function kinecheck(kind) {
			var kindarray = [ '전혈', '혈소판' ];

			var kindcheck = 0;

			for (var i = 0; i < kindarray.length; i++) {
				if (kindarray[i] == kind) {
					kindcheck = 1;
					break;
				}
			}

			if (kindcheck == 0) {
				alert(" 전혈, 혈소판 만 입력 가능합니다.");
			} else {
				$("#kind").val(kind);
			}
		}

		function bnamecheck(bname) {
			var bnamenocheck = bname.search(/[0-9]/g);
			var bnamealcheck = bname.search(/[a-z]/ig);

			if (bnamenocheck < 0 && bnamealcheck < 0) {
				$("#bname").val(bname);
			} else {
				alert("한글만 입력 가능합니다.");
			}

		}

		function bbirthcheck(bbirth) {

			let today = new Date();
			var days = today.toLocaleDateString('kr');

			var D = days.split('.');

			var year = Number(D[0].trim().substring(2, 4));

			if (year > 20) {
				var targetyear = 1900 + year;
			} else {
				var targetyear = 2000 + year;
			}

			var byear = Number(bbirth.substring(0, 2));

			if (byear > 20) {
				var inputyear = 1900 + byear;
			} else if (byear <= 20) {
				var inputyear = 2000 + byear;
			}

			var nowDate = D[1].trim() + D[2].trim();

			var x = targetyear - inputyear;

			console.log(targetyear);
			console.log(inputyear);
			console.log(x);

			var bbirthnocheck = bbirth.search(/[0-9]/g);
			var bbirthalcheck = bbirth.search(/[a-z]/ig);

			if (bbirthnocheck == 0 && bbirthalcheck < 0) {
				if (bbirth.length == 6) {
					if (x > 0) {
						$("#bbirth").val(bbirth);
						$("#bbirth1").val(bbirth);
					} else {
						alert("bdate 미래일수 없습니다.");
					}

				} else {
					alert("bdate 입력형식은 yymmdd 입니다.");
				}

			} else {
				alert("bdate 는 숫자만 입력이 가능합니다.");
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
}

#box>.tap {
	width: 100%;
	height: 50px;
}

#barcode, #direct {
	width: 50%;
	height: 100%;
	float: left;
	border: 1px solid black;
	box-sizing: border-box;
	text-align: center;
	line-height: 30px;
	cursor: pointer;
	border-radius: 20px;
	background: #cf5151;
}

#barcode.on {
	background: #f4A6A6;
	border-bottom: none;
	color: #fff;
}

#direct.on {
	background: #f4A6A6;
	border-bottom: none;
	color: #fff;
}

#content1 {
	width: 100%;
	height: 670px;
	background: blue;
	position: absolute;
	top: 30px;
	display: none;
	box-sizing: border-box;
}

#content2 {
	width: 100%;
	height: 670px;
	background: green;
	position: absolute;
	top: 30px;
	display: none;
	box-sizing: border-box;
}

#content1.on {
	width: 100%;
	height: 95%;
	position: absolute;
	top: 30px;
	background: #fff;
	display: block;
}

#content2.on {
	width: 100%;
	height: 95%;
	position: absolute;
	top: 30px;
	background: #fff;
	display: block;
}

#content1>form>input {
	display: block;
	margin: 10px 0px 10px 30px;
}

#content1>form>div {
	margin-bottom: 10px;
	margin-left: 50px;
}

#content1>form>div>p {
	display: inline-block;
	width: 20%;
	margin-right: 30px;
}

#content2>form>input {
	display: block;
	margin: 10px 0px 10px 30px;
}

#content2>form {
	margin-top: 60px;
}

#content2>form>div {
	margin-bottom: 10px;
	margin-left: 50px;
}

#content2>form>div>p {
	display: inline-block;
	width: 20%;
	margin-right: 30px;
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

#barcodeImpo {
	width: 500px;
	padding: 20px;
}

#barcodeImpo>input {
	width: 300px;
	line-height: 30px;
	margin-left: 30px;
	margin-right: 10px;
}

#barcodeBtn {
	width: 120px;
	height: 35px;
	cursor: pointer;
	background: #4c4c4c;
	color: #fff;
	border-radius: 10px;
}

#submitBtn {
	position: absolute;
	bottom: 170px;
	left: 50px;
	width: 120px;
	height: 35px;
	cursor: pointer;
	background: #4c4c4c;
	color: #fff;
	border-radius: 10px;
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

	<div id="add">

		<div id="title">
			<p>헌혈증 등록하기</p>
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

		<div id="box" class="after">
			<div class="tap">
				<div id="barcode" class="tapbtn on">barcode 등록</div>
				<div id="direct" class="tapbtn">직접 입력 등록</div>
			</div>

			<div id="content1" class="content on">
				입력예시) cardno-bloodgroup-location-bdate-sex-kind-bname-bbirth
				<hr>

				<div id="barcodeImpo">
					<input id="barcodeinput" type="text" name="barcodeImpo"
						placeholder="barcode를 입력해주세요.">
					<button id="barcodeBtn" onclick="splitString();">barcode
						정보 입력</button>
				</div>

				<form action="http://localhost:8099/card/doadd" method="post">

					<div class="inputline">
						<p>card No :</p>
						<input id="cardno" type="text" name="cardno" value="" readonly>
					</div>
					<div class="inputline">
						<p>User Id :</p>
						<input id="userid" type="text" name="userid" readonly>
					</div>
					<div class="inputline">
						<p>Card Blood Group :</p>
						<input id="cbg" type="text" name="cbg" value="" readonly>
					</div>
					<div class="inputline">
						<p>지역 :</p>
						<input id="location" type="text" name="location" value="" readonly>
					</div>
					<div class="inputline">
						<p>Card 등록 일 :</p>
						<input id="bdate" type="text" name="bdate" value="" readonly>
					</div>
					<div class="inputline">
						<p>성별 :</p>
						<input id="sex" type="text" name="sex" value="" readonly>
					</div>
					<div class="inputline">
						<p>헌혈종류 :</p>
						<input id="kind" type="text" name="kind" value="" readonly>
					</div>
					<div class="inputline">
						<p>성명 :</p>
						<input id="bname" type="text" name="bname" value="" readonly>
					</div>
					<div class="inputline">
						<p>생년월일 :</p>
						<input id="bbirth" type="text" name="bbirth" value="" readonly>
					</div>

					<button id="submitBtn" type="submit">등록</button>
				</form>


			</div>
			<div id="content2" class="content" onclick="useridinput();">
				입력예시) cardno-bloodgroup-location-bdate-sex-kind-bname-bbirth
				<hr>
				<form action="http://localhost:8099/card/doadd" method="post">
					<div class="inputline">
						<p>card No :</p>
						<input id="cardno1" type="text" name="cardno">
					</div>
					<div class="inputline">
						<p>User Id :</p>
						<input id="userid1" type="text" name="userid" readonly>
					</div>
					<div class="inputline">
						<p>Card Blood Group :</p>
						<select name="cbg" id="cbg1">
							<option value="A" id="A">A</option>
							<option value="B" id="B">B</option>
							<option value="O" id="O">O</option>
							<option value="AB" id="AB">AB</option>
						</select>
					</div>
					<div class="inputline">
						<p>지역 :</p>
						<select name="location" id="location1">
							<option value="서울" id="서울">서울</option>
							<option value="경기" id="경기">경기</option>
							<option value="강원" id="강원">강원</option>
							<option value="충북" id="충북">충북</option>
							<option value="충남" id="충남">충남</option>
							<option value="경북" id="경북">경북</option>
							<option value="경남" id="경남">경남</option>
							<option value="전북" id="전북">전북</option>
							<option value="전남" id="전남">전남</option>
							<option value="제주" id="제주">제주</option>
							<option value="인천" id="인천">인천</option>
							<option value="대구" id="대구">대구</option>
							<option value="세종" id="세종">세종</option>
							<option value="부산" id="부산">부산</option>
						</select>
					</div>
					<div class="inputline">
						<p>Card 등록 일 :</p>
						<select name="inputy" id="inputy">
							<c:forEach var="i" begin="1950" end="2020">
								<option value="${i}" id="y">${i}</option>
							</c:forEach>
						</select> <select name="inputm" id="inputm">
							<c:forEach var="i" begin="1" end="12">
								<c:choose>
									<c:when test="${i < 10}">
										<option value="0${i}" id="m">0${i}</option>
									</c:when>
									<c:otherwise>
										<option value="${i}" id="m">${i}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select> <select name="inputd" id="inputd">
							<c:forEach var="i" begin="1" end="31">
								<c:choose>
									<c:when test="${i < 10}">
										<option value="0${i}" id="d">0${i}</option>
									</c:when>
									<c:otherwise>
										<option value="${i}" id="d">${i}</option>
									</c:otherwise>
								</c:choose>

							</c:forEach>
						</select> <input id="bdate1" type="text" name="bdate" readonly>

					</div>
					<div class="inputline">
						<p>성별 :</p>
						<select name="sex" id="sex1">
							<option value="M" id="M">M</option>
							<option value="F" id="F">F</option>
							<option value="X" id="X">X</option>
						</select>
					</div>
					<div class="inputline">
						<p>헌혈종류 :</p>
						<select name="kind" id="kind1">
							<option value="전혈" id="전혈">전혈</option>
							<option value="혈소판" id="혈소판">혈소판</option>
						</select>
					</div>
					<div class="inputline">
						<p>성명 :</p>
						<input id="bname1" type="text" name="bname">
					</div>
					<div class="inputline">
						<p>생년월일 :</p>
						<select name="inputby" id="inputby">
							<c:forEach var="i" begin="1950" end="2020">
								<option value="${i}" id="by">${i}</option>
							</c:forEach>
						</select> <select name="inputbm" id="inputbm">
							<c:forEach var="i" begin="1" end="12">
								<c:choose>
									<c:when test="${i < 10}">
										<option value="0${i}" id="bm">0${i}</option>
									</c:when>
									<c:otherwise>
										<option value="${i}" id="bm">${i}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</select> <select name="inputbd" id="inputbd">
							<c:forEach var="i" begin="1" end="31">
								<c:choose>
									<c:when test="${i < 10}">
										<option value="0${i}" id="bd">0${i}</option>
									</c:when>
									<c:otherwise>
										<option value="${i}" id="bd">${i}</option>
									</c:otherwise>
								</c:choose>

							</c:forEach>
						</select> <input id="bbirth1" type="text" name="bbirth">
					</div>
					<button id="submitBtn" type="submit">등록</button>
				</form>
			</div>
		</div>


	</div>



</body>
</html>