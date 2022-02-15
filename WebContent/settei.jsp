<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="jquery-3.6.0.min.js"></script>
<title>設定画面</title>
<link href="settei.css" rel="stylesheet" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
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



	<div align="center">

			<p class="gamen">ログアウトしますか？</p>

			<a href="openidSignOut" class="btn btn--white btn-outline-dark">ログイン</a>
			
	</div>
</body>
</html>