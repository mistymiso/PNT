<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="java.util.*, PNT_Beans.*"%>
<%@ include file="header.jsp"%>
	<form action="write_action.jsp" method="post" name="regitform"> 
		<div>
			<label for="doc_title" class="write_label">제목 </label>
			<input type="text" name="doc_title" class="write_input_text">
		</div>
		<div>
			<span>
				<label for="doc_day_start" class="write_label">시작일 </label>
				<input type="date" name="doc_day_start" value="" class="write_input_date"> 
			</span>
			<span>
				<label for="doc_day_end" class="write_label">종료일 </label>
				<input type="date" name="doc_day_end" value="" class="write_input_date"> 
			</span>
		</div>
		<div>
			<span>
				<label for="doc_lang_id" class="write_label">언어 </label>
				<input type="text" name="doc_lang_id" value="" class="write_input_text">  
			</span>
			<span>
				<label for="doc_loc_id" class="write_label">장소 </label>
				<input type="text" name="doc_loc_id" value="" class="write_input_text"> 
			</span>
		</div>
		<div>
			<label for="doc_contents" class="write_label write_label_contents">세부계획 </label>
			<textarea name="doc_contents" cols="100" rows="20" class="write_input_textarea" ></textarea>
		</div>
		
	 	<input type="submit" value="작성" name="submitbtn" class="btn-style">
		<br><br><br>
		<input type="submit" value="이 여행계획에 참여 신청하기" name="requestSchedule"></input>
	</form>
<%@ include file="footer.jsp" %>