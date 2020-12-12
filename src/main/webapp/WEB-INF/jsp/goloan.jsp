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

#notice, #notice2, #notice3, #notice4, #notice5, #notice6, #notice7,
	#notice8, #notice9, #notice10, #notice11, #notice12, #notice13,
	#notice14 {
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

#notice2, #notice3, #notice4, #notice5, #notice6, #notice7, #notice8,
	#notice9, #notice10, #notice11, #notice12, #notice13, #notice14 {
	display: none;
}

select {
	display: block;
	margin: 20px 0;
}

#userno {
	display: block;
	margin: 20px 0;
}

#loancnt {
	display: block;
	margin: 20px 0;
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

					$("#year").change(function() {
						$("#yearchoose").val($("#year").val());
						var selectyear = $("#yearchoose").val();
						console.log(selectyear);

						let today = new Date();
						var days = today.toLocaleDateString('kr');

						var D = days.split('.');

						var nowyear = D[0].trim();

						var useryear = "${sessionScope.loginedUser.userno}";
						var U = 19 + useryear.substr(0,2);
						var userage =  nowyear - U;
						console.log(U);
						console.log(nowyear - U);

						if(selectyear == 1){
							if(userage > 58){
								alert("1년 상환은 58세 이상은 불가능합니다.");
							}
						}else if(selectyear == 2){
							if(userage > 57){
								alert("2년 상환은 57세 이상은 불가능합니다.");
							}
						}else{
							alert("상환 기간을 선택 해 주세요!!");
						}		

						$("#loancnt").change(function(){	
							var loancnt = $("#loancnt").val();
							selectyear = $("#yearchoose").val();
							if(selectyear == 1){
								if(loancnt > 20){
									alert("1년 상환의 대출 가능 매수는 20장입니다.");
								}
							}else if(selectyear == 2){
								if(loancnt > 40){
									alert("2년 상환의 대출 가능 매수는 40장입니다.");
								}
							}else{
								alert("상환 기간을 선택 해 주세요!!");
							}		
						})
							
					})
			
					

				})

		var noticeview = 0;

		function selectcheck() {
			if (noticeview == 11 || noticeview == 12) {
				$("#wrap>div").eq(noticeview).fadeOut();
				noticeview += 1;
				$("#wrap>div").eq(noticeview).fadeIn();
			}else {
				var madeselect = "#select" + noticeview;
				var next = "#nextbtn" + noticeview;
				var selectValue = $(madeselect).val();
				
				if (selectValue == 0) {
					$("#wrap>div").eq(noticeview).fadeOut();
					noticeview += 1;
					$("#wrap>div").eq(noticeview).fadeIn();
					
				} else {
					alert("헌혈을 진행 할 수 없습니다.");
				}
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

		function loan(){
			var y = $("#year").val();
			var c = $("#loancnt").val();
			console.log(y);
			console.log(c);
			
			$("#loanyear").val(y);
			$("#cnt").val(c);
			
			var loanform = $("#loanform");
			loanform.submit();
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
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>1) 오늘 몸 상태</label> <select id="select0" name="condition">
						<option value="0">해당없음</option>
						<option value="1">몸상태 안 좋음</option>
					</select>
					<button id="nextbtn0" onclick="selectcheck();">다음</button>
				</div>


				<div id="notice2">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>2) 최근 3일 이내 발현 증상</label> <select id="select1"
						name="condition">
						<option value="0">해당없음</option>
						<option value="1">발열</option>
						<option value="2">인후통</option>
						<option value="3">설사</option>
					</select>
					<button id="nextbtn1" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice3">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>3) 최근 1주일 이내 복용 사실</label> <select id="select2"
						name="condition">
						<option value="0">해당없음</option>
						<option value="1">약물 복용</option>
						<option value="2">주사</option>
					</select>
					<button id="nextbtn2" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice4">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>4) 최근 1개월 이내</label> <select id="select3" name="condition">
						<option value="0">해당없음</option>
						<option value="1">반복적인 고열, 춥고 떨림, 땀흘림</option>
						<option value="2">외국여행</option>
						<option value="3">치과치료</option>
						<option value="4">의료기관에서 단순 감기 외 질병 진단/치료</option>
						<option value="5">시술(내시경,조직검사,레이저)</option>
						<option value="6">기타</option>
					</select>
					<button id="nextbtn3" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice5">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>5) 최근 6개월 이내</label> <select id="select4" name="condition">
						<option value="0">해당없음</option>
						<option value="1">임신,분만,유산 (여성만 해당)</option>
						<option value="2">사마귀,점제거,피어싱,문신,침술,부항(사혈)</option>
					</select>
					<button id="nextbtn4" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice6">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>6) 최근 1년 이내</label> <select id="select5" name="condition">
						<option value="0">해당없음</option>
						<option value="1">입원</option>
						<option value="2">수혈</option>
						<option value="3">수술</option>
						<option value="4">경련</option>
						<option value="5">의식소실</option>
						<option value="6">예방접종</option>
						<option value="7">타인이 사용한 주사 찔림</option>
						<option value="8">마약 주사</option>
						<option value="9">교도소,구치소 3일 이상 수감</option>
						<option value="10">불특정 이성 및 동성과의 성접촉</option>
					</select>
					<button id="nextbtn5" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice7">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>7) 최근 1년 이내</label> <select id="select6" name="condition">
						<option value="0">해당없음</option>
						<option value="1">암</option>
						<option value="2">심장실환</option>
						<option value="3">신장질환</option>
						<option value="4">간질환</option>
						<option value="5">호흡기질환</option>
						<option value="6">혈핵질환(혈우병,적혈구증다증 등)</option>
						<option value="7">당요병</option>
						<option value="8">피부질환(건선 등)</option>
						<option value="9">알콜 또는 마약 중독</option>
						<option value="10">정신 질환</option>
						<option value="11">경련성질환</option>
						<option value="12">자가 면역 질환 (류마티즘 등)</option>
						<option value="13">장기이식 (신장, 간장, 췌장, 심장, 폐, 골수, 안구 등)</option>
						<option value="14">기타</option>
					</select>
					<button id="nextbtn6" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice8">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>8) 헌혈 금지 약물</label> <select id="select7" name="condition">
						<option value="0">해당없음</option>
						<option value="1">건선치료제</option>
						<option value="2">전립선치료제</option>
						<option value="3">탈모증치료제</option>
						<option value="4">뇌하수체 유래 성장호르몬</option>
						<option value="5">여드름치료제</option>
						<option value="6">그외</option>
					</select>
					<button id="nextbtn7" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice9">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>9) 감염병</label> <select id="select8" name="condition">
						<option value="0">해당없음</option>
						<option value="1">B형,C형 등 간염</option>
						<option value="2">에이즈</option>
						<option value="3">말라리아</option>
						<option value="4">성병(임질,매독 등)</option>
						<option value="5">한센병</option>
						<option value="6">바베시아증</option>
						<option value="7">샤가스병</option>
						<option value="8">변종 크로이츠펠트-야콥병(vCJD)</option>
						<option value="9">브루셀라증</option>
						<option value="10">그외</option>
					</select>
					<button id="nextbtn8" onclick="selectcheck();">다음</button>
				</div>


				<div id="notice10">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>10) 말라이아</label> <select id="select9" name="condition">
						<option value="0">해당없음</option>
						<option value="1">최근 1년 이내 국.내외 말라리아 관련 지역 1일 이상 6개월 미만
							숙박</option>
						<option value="2">최근 2년 이내 국내 말라리아 관련 지역 6개월 이상 거주 또는 군
							복무</option>
						<option value="3">최근 4년 이내 국외 말라리아 관련 헌혈 제한 지역 6개월 이상 거주
							또는 군 복무</option>
					</select>
					<button id="nextbtn9" onclick="selectcheck();">다음</button>
				</div>


				<div id="notice11">
					<p>
						1. 아래와 같은 경험을 해당 기간 안에 하신 분 중 일부는 일정기간 동안 헌혈할 수 없습니다. <br>해당되는
						사항의 체크영역 란에 체크표시 표 해 주십시오. <br> <br>
					</p>
					<label>11) 변종 크로이츠펠트-야콥병(vCJD)</label> <select id="select10"
						name="condition">
						<option value="0">해당없음</option>
						<option value="1">1980 ~ 1996년생 1개월 이상 영국 방문/여행</option>
						<option value="2">1997 ~ 현재 3개월 이상 영국 거주/방문/여행</option>
						<option value="3">1980년 ~ 현재 5년 이상 유럽국가 거주/방문/여행</option>
						<option value="3">1980년 이후 영국/프랑스에서 수혈</option>
					</select>
					<button id="nextbtn10" onclick="selectcheck();">다음</button>
				</div>

				<div id="notice12">
					<p>
						<span>동의서</span><br> <br> 「혈액관리법」제4조의2제4항에 따라 헌혈에 관한
						유의사항을 설명 받았으며 다음 사항에 동의합니다.<br> <br> 나는 생명을 살리고자 하는 고귀한
						뜻에 동참하여 자발적으로 헌혈하는데 동의합니다. <br>나는 문진사항과 헌혈관련증상에 대해 읽고 충분히
						이해하였 으며, 모든 질문에 정직하게 답하였습니다. <br>나는 수혈받는 환자를 보호하기 위하여 필요한 검사를
						시행하고, 그 결과를 포함하여 과거의 헌혈 경력, 검사 결과 및 세부사항(헌혈부적격 관련 정보 등)을 관리, 전산
						조회하는 것에 동의합니다. <br>만약 나의 혈액이 수혈에 부적합한 것으로 판정되면, 채혈금지대상자로 등록될
						수 있음에 동의하며 이로 인한 어떠한 불이익도 없다는 점을 이해합니다. <br>내가 헌혈한 혈액(검체 등
						포함)이 최소 10년간 보관되어야 한다는 사실에 동의하며, 아래와 같은 목적으로 사용될 수 있다는 사실에 동의합니다.
						<br>- 의학적 연구, 의약품·의료기기 개발, 혈액관리에 필요한 품질관리 및 시약평가, 수혈부작용 원인규명,
						헌혈경력이 있는군 장병 유해 신원확인, <br>6.25 전사자 신원확인 및 유가족 찾기를 위한 DNA 시료
						채취 동의함 <br> <br> <br> 헌혈자 성명:
						${sessionScope.loginedUser.name} <br> <br>
					</p>

					<button id="nextbtn11" onclick="selectcheck();">제출</button>
				</div>

				<div id="notice13">
					<p>
						<span>전자문진 결과 헌혈이 가능하십니다.</span> <br> <br> <br>전자문진에서
						헌혈이 가능하다고 판정되어도, 헌혈의 집 방문 시 현장 문진 결과에 따라 헌혈이 불가할 수도 있습니다. <br>
						이 문진결과는 제출일로부터 3일간(2020-11-14 까지)만 유효하며 3일이 지난 경우 전자문진을 다시 작성하셔야
						합니다. <br>헌혈 후 교부되는 헌혈증서를 의료기관에 제출하시면 수혈비용 중 본인부담금이 면제됩니다. <br>헌혈증서는
						양도가 가능하므로 수혈이 필요한 분들에게 기증하시면 큰 도움이 됩니다.
					</p>

					<button id="nextbtn12" onclick="selectcheck();">대출 하러 가기!</button>

				</div>

				<div id="notice14">
					<p>
						1) 1년 상환 조건 : 나이 - 17세 ~ 59세 , 2년 상환 조건 17 ~ 58세 (혈소판 , 혈장 헌혈 기준
						1년 24회)<br> <br>
					</p>

					<div id="birth">
						<p>상환 기간 선택</p>
						<select id="year">
							<option value="0">선택필수</option>
							<option value="1">1년</option>
							<option value="2">2년</option>
						</select> <input id="yearchoose" type="hidden" name="yearchoose" value="">
						<label>생년월일 : </label><input id="userno" type="text" readonly
							value="${sessionScope.loginedUser.userno}"
							placeholder="${sessionScope.loginedUser.userno}"> <label>헌혈증
							대출 매수 선택</label> <input id="loancnt" type="number" min="1" max="40">
					</div>

					<form id="loanform" action="http://localhost:8099/loan/doloan">
						<input id="loanyear" type="hidden" name="loanyear" value="">
						<input id="cnt" type="hidden" name="loancnt" value ="">
					</form>
					<button id="nextbtn13" onclick="loan();">대출 신청</button>

				</div>

			</div>
		</div>



	</div>

</body>
</html>