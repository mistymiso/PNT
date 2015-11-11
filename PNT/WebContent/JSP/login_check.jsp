<%@ page contentType="text/html; charset=utf-8" import="jobBoard.*"%>
<jsp:useBean id="loginBean" class="jobBoard.jbLogin" scope="page" />
<jsp:useBean id="dbBean" class="jobBoard.useDB" scope="page" />
<jsp:setProperty name="loginBean" property="*" />
<%
	if (dbBean.log_In(loginBean.getUserid(), loginBean.getUserpw())) // db에 있는 id와 pw를 비교
	{
		session.setAttribute("userid", loginBean.getUserid());
		response.sendRedirect("main.jsp"); // 조건문의 값이 true라면 메인 페이지로
	} else {
		response.sendRedirect("login.jsp");
	}
%>