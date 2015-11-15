<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*, PNT_Beans.*"%>
<jsp:useBean id="docDTO" class="PNT_Beans.documentDTO" scope="page" />
<jsp:useBean id="docDAO" class="PNT_Beans.documentDAO" scope="page" />
<%@ include file="header.jsp"%>

<%
	List<documentDTO> docList = new ArrayList<documentDTO>();
	docList = docDAO.getDocumentList(1, 10);

	for (int i = 0; i < docList.size(); i++) {
		docDTO = (documentDTO) docList.get(i);
		if ((i % 3) == 1)
			System.out.println("");
%>
<div style="border: solid 1px;">
	<ul>
		<li>No : <%=docDTO.getDocId()%></li>
		<li>State Code : <%=docDTO.getDocStateCode()%></li>
		<li>Title : <%=docDTO.getDocTitle()%></li>
		<li>Day : <%=docDTO.getDocDayStart()%> ~ <%=docDTO.getDocDayEnd()%></li>
		<li>Contents : <%=docDTO.getDocContents()%></li>
		<li>Language : <%=docDTO.getDocLangId()%></li>
		<li>Location : <%=docDTO.getDocLocId()%></li>
		<li>Writer : <%=docDTO.getDocMemNo()%></li>
	</ul>
</div>
<%
	}
%>

<%@ include file="footer.jsp"%>