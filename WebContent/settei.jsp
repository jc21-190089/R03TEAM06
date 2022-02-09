<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="jquery-3.6.0.min.js"></script>
<title>設定画面</title>
<link href="settei.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
<%--↓ハンバーガ目メニュー↓ --%>
	<div class="ham">
		<div class="nav_toggle">
			<i></i> <i></i> <i></i>
		</div>
		<nav class="nav">
			<ul class="nav_menu_ul">
				<li class="nav_menu_li"><a href="http://localhost:8080/R03Team06/list">リスト画面</a></li>
				<li class="nav_menu_li"><a href="http://localhost:8080/R03Team06/kaimono">買い物画面</a></li>
				<li class="nav_menu_li"><a href="http://localhost:8080/R03Team06/tuika.jsp">追加画面</a></li>
			</ul>
		</nav>
	</div>

	<script>
	    $('.nav_toggle').on('click', function () {
	        $('.nav_toggle, .nav').toggleClass('show');
    	});
	</script>
	<%--↑↑↑↑↑↑↑↑↑ --%>
	<div align="center">
		<div>
			<p class="gamen">ログアウト画面</p>
		</div>
		<div>
			<button type="submit">
				<p class="logout">ログアウト</p>
			</button>
		</div>
	</div>
</body>
</html>