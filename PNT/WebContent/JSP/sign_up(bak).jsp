<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<html>
<head>
<title>회원가입</title>
</head>
<body>
	<Form name="frm" action="sign_check.jsp" method="post">
		<table border=1>
			<tr>
				<th>ID</th>
				<td><input type="text" name="id"></td>
			</tr>
			
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
						
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
						
			<tr>
				<th>연락처</th>
				<td><input type="text" name="phone"></td>
			</tr>
			
			<tr>
			 	<th>e-mail</th>
			 	<td><input type="email" name="email"></td>
			 </tr>
			 
			 	<tr>
			 	<th>나이</th>
			 	<td><input type="text" name="age"></td>
			 </tr>
			 
			 <tr>
			 	<th>성별</th>
			 	<td><input type="radio" name="gender" value="Male">남
			 		<input type="radio"	name="gender" value="Female">여
			 	</td>
			 </tr>

			<tr>
				<td colspan=2 align="center">
					<input type="submit" value="   가입하기   "	>
				</td>			  					
		</table>
	</Form>
</body>
</html>