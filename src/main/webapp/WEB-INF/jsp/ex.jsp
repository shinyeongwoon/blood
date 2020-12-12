<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://kit.fontawesome.com/3f8e0d8d89.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body>


	<script>
		var opacity = ".menu-opacity";

		$(".menu-opacity").mouseenter(function() {
			$(".dot").removeClass("active");
			$(".dot").addClass("active");
		});

		$(".menu-opacity").mouseleave(function() {
			$(".dot").removeClass("active");
		});

		var shin = ".menu-opacity";

		$(shin).mouseenter(function() {
			var indexNo = $(this).index();
			$(".dot").removeClass("active");
			$(".dot").eq(indexNo).addClass("active");
		});

		$(".menu-opacity").mouseleave(function() {
			$(".dot").removeClass("active");
		});
		
	</script>

	<div class="logo"></div>
	<div class="menu-all-wrap">
		<div class="dots">
			<div class="dot active"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
			<div class="dot"></div>
		</div>
		<nav class="menu-wrap">
			<div class="menu clearfix">
				<div class="menu-opacity">
					<p>파바매거진</p>
					<p>PB MAGAZINE</p>
				</div>
				<div class="menu-opacity">
					<p>파바스토리</p>
					<p>PB STORY</p>
				</div>
				<div class="menu-opacity">
					<p>제품정보</p>
					<p>PRODUCTS</p>
				</div>
				<div class="menu-opacity">
					<p>매장찾기</p>
					<p>STORE</p>
				</div>
				<div class="menu-opacity">
					<p>해피오더</p>
					<p>DELIVERY</p>
				</div>
				<div class="menu-opacity">
					<p>이벤트</p>
					<p>PROMOTION</p>
				</div>
			</div>
		</nav>
	</div>


</body>
</html>