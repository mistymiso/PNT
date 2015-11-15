package PNT_Beans;

public class languageDTO {
	private int lang_id; // 언어ID
	private String language; // 언어(설명)

	public languageDTO() {
		lang_id = 0; // 언어ID
		language = ""; // 언어(설명)
	}

	/* setName */
	public void setLangId(int _lang_id) {
		this.lang_id = _lang_id;
	}

	public void setLanguage(String _language) {
		this.language = _language;
	}

	/* getName */
	public int getLangId() {
		return lang_id;
	}

	public String getLanguage() {
		return language;
	}
}