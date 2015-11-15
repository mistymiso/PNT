package PNT_Beans;

public class imageDTO {
	private int pic_id; // 사진파일ID
	private String pic_addr; // 사진파일 주소
	
	public imageDTO() {
		pic_id = 0; // 사진파일ID
		pic_addr = ""; // 사진파일 주소

	}

	/* setName */
	public void setPicId(int _pic_id) {
		this.pic_id = _pic_id;
	}

	public void setPicAddr(String _pic_addr) {
		this.pic_addr = _pic_addr;
	}

	/* getName */
	public int getPicId() {
		return pic_id;
	}

	public String getPicAddr() {
		return pic_addr;
	}
}