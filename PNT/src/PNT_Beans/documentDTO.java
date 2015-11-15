package PNT_Beans;

public class documentDTO {
	private int doc_id; // 계획ID
	private String doc_title; // 계획제목
	private String doc_day_start; // 계획 시작일
	private String doc_day_end; // 계획 종료일
	private String doc_contents; // 계획 세부내용

	// 외래키 부분을 저장할 변수
	private int doc_state_code; // 계획글 상태코드
	private int doc_loc_id; // 계획글에 사용할 장소번호
	private int doc_lang_id; // 계획글에 사용할 언어번호
	private int doc_pic_id; // 계획글에 사용할 이미지번호
	private int doc_mem_no; // 계획글에 사용할 회원번호

	public documentDTO() {
		doc_id = 0; // 계획ID
		doc_title = ""; // 계획제목
		doc_day_start = ""; // 계획 시작일
		doc_day_end = ""; // 계획 종료일
		doc_contents = ""; // 계획 세부내용

		doc_state_code = 0; // 계획글 상태코드
		doc_loc_id = 0; // 계획글에 사용할 장소번호
		doc_lang_id = 0; // 계획글에 사용할 언어번호
		doc_pic_id = 0; // 계획글에 사용할 이미지번호
		doc_mem_no = 0; // 계획글에 사용할 회원번호
	}

	/* setName */
	public void setDocId(int _doc_id) {
		this.doc_id = _doc_id;
	}

	public void setDocTitle(String _doc_title) {
		this.doc_title = _doc_title;
	}

	public void setDocDayStart(String _doc_day_start) {
		this.doc_day_start = _doc_day_start;
	}

	public void setDocDayEnd(String _doc_day_end) {
		this.doc_day_end = _doc_day_end;
	}

	public void setDocContents(String _doc_contents) {
		this.doc_contents = _doc_contents;
	}

	public void setDocStateCode(int _doc_state_code) {
		this.doc_state_code = _doc_state_code;
	}

	public void setDocLocId(int _doc_loc_id) {
		this.doc_loc_id = _doc_loc_id;
	}

	public void setDocLangId(int _doc_lang_id) {
		this.doc_lang_id = _doc_lang_id;
	}

	public void setDocPicId(int _doc_pic_id) {
		this.doc_pic_id = _doc_pic_id;
	}

	public void setDocMemNo(int _doc_mem_no) {
		this.doc_mem_no = _doc_mem_no;
	}

	/* getName */
	public int getDocId() {
		return doc_id;
	}

	public String getDocTitle() {
		return doc_title;
	}

	public String getDocDayStart() {
		return doc_day_start;
	}

	public String getDocDayEnd() {
		return doc_day_end;
	}

	public String getDocContents() {
		return doc_contents;
	}

	public int getDocStateCode() {
		return doc_state_code;
	}

	public int getDocLocId() {
		return doc_loc_id;
	}

	public int getDocLangId() {
		return doc_lang_id;
	}

	public int getDocPicId() {
		return doc_pic_id;
	}

	public int getDocMemNo() {
		return doc_mem_no;
	}
}