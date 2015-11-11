<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form method = "post">
<h3>로그인</h3>   
<input type="text" name="userid" placeholder="ID" maxlength="10" required autofocus><br>
<input type="password" name="userpw" placeholder="PASSWORD" maxlength="10" required><br><br>
&nbsp; <input type="submit" name="login" value="로그인" formaction="login_check.jsp">
&nbsp;<input type="button" name="signUp"value="회원가입" onClick="location.href='sign_up.jsp'">
</form>
</body>
</html>
<!-- 로그인 버튼은 login_check로, 회원가입은 sign_up.jsp로 -->
