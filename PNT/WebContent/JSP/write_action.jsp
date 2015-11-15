<%@ page contentType="text/html;charset=utf-8" import="PNT_Beans.*"%>
<%@ include file="header.jsp"%>
<%
	documentDTO docDTO = new documentDTO();
	documentDAO docDAO = new documentDAO();

	request.setCharacterEncoding("UTF-8");
	String doc_title = request.getParameter("doc_title");
	String doc_day_start = request.getParameter("doc_day_start");
	String doc_day_end = request.getParameter("doc_day_end");
	String doc_contents = request.getParameter("doc_contents");
	String doc_lang_id = request.getParameter("doc_lang_id");
	String doc_loc_id = request.getParameter("doc_loc_id");

	docDTO.setDocTitle(doc_title);
	docDTO.setDocDayStart(doc_day_start);
	docDTO.setDocDayEnd(doc_day_end);
	docDTO.setDocContents(doc_contents);
	docDTO.setDocLangId(1);
	docDTO.setDocLocId(1);
	docDTO.setDocMemNo(1);
	docDTO.setDocPicId(1);

	docDAO.writeDocument(docDTO);
%>
<div style="text-align: center;">
	글이 등록되었습니다.<br> <a href="../light/index.html">목록보러 가기(임시 홈)</a>
</div>

<%@ include file="footer.jsp"%>
