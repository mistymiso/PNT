<%@ page contentType="text/html;charset=utf-8" import="jobBoard.*"%>
<jsp:useBean id="memberBean" class="jobBoard.member" scope="page"/>
<jsp:useBean id="dbBean" class="jobBoard.useDB" scope="page"/>
<jsp:setProperty name="memberBean" property="*"/>
<%
request.setCharacterEncoding("utf-8");
%>
<html>
 <body>
<%
if(dbBean.addMember(memberBean.getUserid(),memberBean.getUserpw(),memberBean.getName(),
		memberBean.getPhone(),memberBean.getGender(),memberBean.getEmail(),memberBean.getAge()))
 response.sendRedirect("login.jsp"); // 빈즈의 addMember에게 sign_up 페이지의 정보를 모아 매개변수로 보내준다.
 %>
 </body>
 </html>