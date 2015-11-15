package PNT_Beans;

public class loginDTO {
	private String userid;
	private String userpwd;

	public loginDTO() {
		userid = "";
		userpwd = "";
	}

	public void setUserid(String _userid) {
		userid = _userid;
	}

	public void setUserpw(String _userpwd) {
		userpwd = _userpwd;
	}

	public String getUserid() {
		return userid;
	}

	public String getUserpw() {
		return userpwd;
	}

}
