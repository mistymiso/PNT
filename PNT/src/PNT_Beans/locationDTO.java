package PNT_Beans;

public class locationDTO {
	private int loc_id; // 지역ID
	private String location; // 지역(설명)

	public locationDTO() {
		loc_id = 0; // 지역ID
		location = ""; // 지역(설명)

	}

	/* setName */
	public void setLocId(int _loc_id) {
		this.loc_id = _loc_id;
	}

	public void setLocation(String _location) {
		this.location = _location;
	}

	/* getName */
	public int getLocId() {
		return loc_id;
	}

	public String getLocation() {
		return location;
	}
}