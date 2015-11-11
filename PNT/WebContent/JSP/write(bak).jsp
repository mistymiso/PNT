<head>
<%@ page contentType="text/html;charset=utf-8" import="jobBoard.*"%>
<script src="./common/checkForms.js" type="Text/JavaScript"></script>
</head>
<jsp:useBean id="writeBean" class="jobBoard.jbWrite" scope="page"/>
<jsp:useBean id="dbBean" class="jobBoard.useDB" scope="page"/>
<jsp:setProperty name="writeBean" property="*"/>
<%!
dbSchema doc;
 %>
 <%
 request.setCharacterEncoding("utf-8");
 String sessID = (String)session.getAttribute("userid"); // 세션
 if(sessID == null)
 response.sendRedirect("login.jsp");
 %>
 <%
 	if(writeBean.getIdx() != null)
 	{
 		if (writeBean.getMode().equalsIgnoreCase("E")|| writeBean.getMode().equalsIgnoreCase("R")) 
 		{
 			if (writeBean.getMode().equalsIgnoreCase("R")) 
 			{
 				dbBean.addHit(writeBean.getCategory(),writeBean.getIdx());
 			}
 			doc = dbBean.getDoc(writeBean.getCategory(),writeBean.getIdx());
 		} 
 		else if (writeBean.getMode().equalsIgnoreCase("D")) 
 		{
 			dbBean.delDoc(writeBean.getCategory(),writeBean.getIdx());
 			response.sendRedirect("main.jsp");
 		}
 	}
 %>
 <body>
 <jsp:getProperty name="writeBean" property="prtmode" /> 
 
 <form action="write_check.jsp" method="post" name="regitform"> 
 <% 
 if(writeBean.getIdx() =="") // 인덱스가 없으니 새로 쓴다
 { %>
 
 <input list="board" name="category">
 <datalist id="board">
 <option value="high">
 <option value="private">
 <option value="longterm">
 <option value="student">
 <option value="home">
 <option value="teen">
 </datalist> 옆의 칸을 클릭해 글을 작성할 게시판을 선택하세요 <br> 월급 : <input type=text name="pay" placeholder="월급으로 기재">
 구인 시작일 : <input type="date" name="sdate" value=<%=writeBean.getDate() %>>
 마감일 : <input type="date" name="edate" >
 
 
 
 <%} else {// 아닌경우에는 db에서 값을 불러와 채워넣음%>
 <input readonly list="board" name="category" value=<%=doc.getCategory() %>>
 <datalist id="board">
 <option value="high">
 <option value="private">
 <option value="longterm">
 <option value="student">
 <option value="home">
 <option value="teen">
 </datalist> 옆의 칸을 클릭해 글을 작성할 게시판을 선택하세요 <br> 월급 : <input <% if(writeBean.getMode().equalsIgnoreCase("R")) {%> readonly <%} %> type=text name="pay" value=<%=doc.getPay() %>>
 구인 시작일 : <input <% if(writeBean.getMode().equalsIgnoreCase("R")) {%> readonly <%} %> type="text" name="sdate" value=<%=doc.getSdate() %>>
 마감일 : <input <% if(writeBean.getMode().equalsIgnoreCase("R")) {%> readonly <%} %> type="text" name="edate" value=<%=doc.getEdate() %>>
 <%} %>
 <table cellspacing=1 width=600 border=1>
<tr>
 <td> 글쓴이 </td>
 <%
 if(writeBean.getIdx() == "")   
 { %>
 <td> <input readonly type="text" name="uid" value=<%=sessID %>> </td>
 <%
 } 
 else 
 {%>
 <td> <input <% if(writeBean.getMode().equalsIgnoreCase("R")) {%> readonly <%} %> type="text"
	name="uid" value=<%=doc.getWriter() %>> </td>
 <%
 }
 %>
 </tr>
 <tr>
 <td> 제목 </td>
 <%
 if(writeBean.getIdx() == "")
 { %> <td> <input type="text" name="title"></td>
 <%
 } 
 else 
 {%>
 <td><input <% if(writeBean.getMode().equalsIgnoreCase("R")) {%> readonly <%} %> type="text"
name="title" value=<%=doc.getTitle() %>></td>
 <%
 } 
 %>
 </tr>
 <tr>
 <td> 내용 </td>
 <%
 if(writeBean.getIdx() == "")
 { %>
 <td> <textarea name="contents" cols="100" rows="20"></textarea></td>
 <%} 
 else 
 {%>
 <td> <textarea <% if(writeBean.getMode().equalsIgnoreCase("R")) {%> readonly <%} %>
name="contents" cols="100" rows="20"><%=doc.getContents() %></textarea></td>
 <%
 } 
 %>
 </tr>
 </table>
 <%
 if(writeBean.getIdx() == "") 
 {
 %>
 <input type="submit" value="작성" name="submitbtn">
 <%
 } 
 else 
 {       %> 
 <input type="button" value="목록" name="list" onClick="goList('<%= writeBean.getCategory() %>')">
   <%if(!doc.getWriter().equalsIgnoreCase(sessID) && doc.getCanapp() == true) 
   { //접속자와 글쓴이가 다른 사람이고 응모가능하다면 지원하기 버튼을 보여준다
 %>
<table><tr><td>
<a href="apply.jsp?category=<%=writeBean.getCategory() %>&a_idx=<%=writeBean.getIdx() %>">지원하기</a></td></tr></table>

 <%} else if(doc.getWriter().equalsIgnoreCase(sessID)) {
 //글쓴이와 접속자가 같다면 지원자 보기 기능을 제공한다%>
<table><tr><td>
<a href="applierList.jsp?&a_idx=<%=writeBean.getIdx() %>">지원자 보기</a></td></tr></table>

 <%} %>
 <%if(doc.getWriter().equalsIgnoreCase(sessID))
 {
 	if(writeBean.getMode().equalsIgnoreCase("R")) {
 %>
 <input type="button" value="EDIT" name="edit" onClick="goEdit(<%= writeBean.getIdx() %>,'<%= writeBean.getCategory() %>')">
 <input type="button" value="DELETE" name="delete" onClick="goDelete(<%= writeBean.getIdx() %>,'<%= writeBean.getCategory() %>')">
<% if(doc.getCanapp()== true){ // 접속자와 글쓴이가 같고 Read 모드이고 게시글이 응모가능하다면 마감하기 버튼을 보여준다. %>
<table><tr><td><a href="disable.jsp?category=<%=writeBean.getCategory() %>&a_idx=<%=writeBean.getIdx()%>">마감하기</a></td></tr></table>
<%} %>
 
 
 <%} else {%>
 <input type="hidden" name="idx" value=<%=writeBean.getIdx() %>>
 <input type="submit" value="WRITE" name="submitbtn">
 <%} %>
 <%}%>
 <%} %>

 
 </form> </body>
 </html>