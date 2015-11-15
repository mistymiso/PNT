<%@ page contentType="text/html;charset=utf-8" import="PNT_Beans.*"%>
<%@ include file="header.jsp"%>
<%
	memberDTO memDTO = new memberDTO();
	memberDAO memDAO = new memberDAO();

	request.setCharacterEncoding("UTF-8");
	String mem_id = request.getParameter("mem_id");
	String mem_pass = request.getParameter("mem_pass");
	String mem_name = request.getParameter("mem_name");
	String mem_phone = request.getParameter("mem_phone");
	String mem_lang_id = request.getParameter("mem_lang_id");

	memDTO.setMemId(mem_id);
	memDTO.setMemPass(mem_pass);
	memDTO.setMemName(mem_name);
	memDTO.setMemPhone(mem_phone);

	memDAO.joinMember(memDTO);
%>
<div style="text-align: center;">
	회원 가입이 완료되었습니다.<br> <a href="../light/index.html">홈으로</a>
</div>
<%@ include file="footer.jsp"%>