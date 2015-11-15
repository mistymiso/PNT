<%@ page contentType="text/html;charset=utf-8"%>
<%@ include file="header.jsp"%>
<jsp:useBean id="loginData" class="PNT_Beans.loginDTO" scope="page" />
<jsp:useBean id="loginMethod" class="PNT_Beans.loginDAO" scope="page" />
<jsp:setProperty name="loginData" property="*" />
<%
	System.out.println("넘어온 아이디값 : " + loginData.getUserid());
	System.out.println("넘어온 비밀번호값 : " + loginData.getUserpw());

	if (loginMethod.login(loginData.getUserid(), loginData.getUserpw())) // db에 있는 id와 pw를 비교
	{
		session.setAttribute("userid", loginData.getUserid());
		response.sendRedirect("../light/index.html"); // 조건문의 값이 true라면 메인 페이지로
	} else {
		response.sendRedirect("login.jsp");
	}
%>
<%@ include file="footer.jsp"%>