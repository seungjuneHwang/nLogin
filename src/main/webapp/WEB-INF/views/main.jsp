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
function logout() {
	console.log('${pageContext.request.contextPath}/login');
	  $("body").append("<iframe id='logoutIframe' style='display: none;'></iframe>");
	  $("#logoutIframe").attr("src", "http://nid.naver.com/nidlogin.logout");
	  // 로그아웃 처리
		setTimeout("location.href='${pageContext.request.contextPath}/logout'", 1000);
	 }
</script>

</head>
<body>
	<div
		style="width: 100%; height: 50px; text-align: center; color: green;">
		<h3>메인 페이지 입니다.</h3>
	</div>
	<br>

	<embed type="text/html" width="100%" height="500px" src="https://webglsamples.org/aquarium/aquarium.html">
	</embed>
	
	<div id="naver_id_logout">
    	<a href="#" onclick="logout();">로그아웃</a>
    </div>
</body>
</html>