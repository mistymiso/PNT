package PNT_Beans;

public class memberDTO {
	private int mem_no; // 회원번호
	private String mem_type; // 회원종류
	private String mem_id; // 회원 ID
	private String mem_pass; // 회원 비밀번호
	private String mem_name; // 회원 이름
	private String mem_phone; // 회원 연락처

	private int mem_state_code; // 회원 상태코드
	private int mem_lang_id; // 회원 언어

	public memberDTO() {
		mem_no = 0; // 회원번호
		mem_type = ""; // 회원종류
		mem_id = ""; // 회원 ID
		mem_pass = ""; // 회원 비밀번호
		mem_name = ""; // 회원 이름
		mem_phone = ""; // 회원 연락처

		mem_state_code = 0; // 회원 상태코드 : 기본상태는 0(미인증), 1(인증)
		mem_lang_id = 1; // 회원 언어
	}

	/* setName */
	public void setMemNo(int _mem_no) {
		this.mem_no = _mem_no;
	}

	public void setMemType(String _mem_type) {
		this.mem_type = _mem_type;
	}

	public void setMemId(String _mem_id) {
		this.mem_id = _mem_id;
	}

	public void setMemPass(String _mem_pass) {
		this.mem_pass = _mem_pass;
	}

	public void setMemName(String _mem_name) {
		this.mem_name = _mem_name;
	}

	public void setMemPhone(String _mem_phone) {
		this.mem_phone = _mem_phone;
	}

	public void setsMemStateCode(int _mem_state_code) {
		this.mem_state_code = _mem_state_code;
	}

	public void setMemLangId(int _mem_lang_id) {
		this.mem_lang_id = _mem_lang_id;
	}


	/* getName */
	public int getMemNo() {
		return mem_no;
	}

	public String getMemType() {
		return mem_type;
	}

	public String getMemId() {
		return mem_id;
	}

	public String getMemPass() {
		return mem_pass;
	}

	public String getMemName() {
		return mem_name;
	}

	public String getMemPhone() {
		return mem_phone;
	}

	public int getsMemStateCode() {
		return mem_state_code;
	}

	public int getMemLangId() {
		return mem_lang_id;
	}
}