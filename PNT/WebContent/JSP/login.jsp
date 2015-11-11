<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="../light/login_box.css" media="all" />
<script type="text/javascript" src="../light/style/js/jquery-1.6.2.min.js"></script>
</head>

<body>
	<div class="loign_box">
		<form method = "post">
			<h1>ID/PW를 입력해주세요.</h1>
			<input type="text" name="userid" placeholder="ID" maxlength="10" class="input-text" required autofocus>
			<input type="password" name="userpw" placeholder="PASSWORD" class="input-text" maxlength="10" required><br>
			<input type="submit" class="btn-style" name="login" value="로그인" formaction="login_check.jsp">
		</form>
	</div>
</body>
</html>
<!-- 로그인 버튼은 login_check로, 회원가입은 sign_up.jsp로 -->
