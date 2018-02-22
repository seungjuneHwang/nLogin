<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/loader.css" rel="stylesheet" >
	<style type="text/css">
		html, div, body, h3 {
			margin: 0;
			padding: 0;
		}
		
		h3 {
			display: inline-block;
			padding: 0.6em;
		}
	</style>

<script type="text/javascript">

	$(document).ready(function() {
		var name = ${nvSession }.response.nickname;
		var email = ${nvSession }.response.email;
		$("#name").html("환영합니다. "+name+"님");
		$("#email").html(email);
		setTimeout("location.href='${pageContext.request.contextPath}/main'", 3000);
	  });
</script>

</head>
<body>
	<div
		style="width: 100%; height: 50px; text-align: center; color: green;">
		<h3>메인 페이지로 이동 합니다.</h3>
	</div>
	<div class="cssload-thecube">
	<div class="cssload-cube cssload-c1"></div>
	<div class="cssload-cube cssload-c2"></div>
	<div class="cssload-cube cssload-c4"></div>
	<div class="cssload-cube cssload-c3"></div>
</div>
	<br>
	<h2 style="text-align: center" id="name"></h2>
	<h4 style="text-align: center" id="email"></h4>


</body>
</html>