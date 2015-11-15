package PNT_Beans;

import PNT_Beans.UseDB;
import PNT_Beans.documentDTO;

import java.sql.*;
import java.util.List;
import java.util.ArrayList;

public class documentDAO {
	UseDB db;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public documentDAO() {
		try {
			db = new UseDB();
			con = null;
			pstmt = null;
			rs = null;
		} catch (Exception e) {
			System.out.println("documentDAO error : " + e);
			return;
		}
	}

	// count the number of documents
	public int getListCount() {
		int x = 0;

		try {
			con = db.getConnection();
			pstmt = con.prepareStatement("SELECT COUNT(*) FROM DOCUMENTS");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getListCount error: " + e);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
		return x;
	}

	// list documents
	public List<documentDTO> getDocumentList(int page, int limit) {
		String sql = "SELECT * FROM DOCUMENTS WHERE DID>=? AND DID<=? ORDER BY DID DESC";


		int startRow = (page - 1) * 5 + 1; // the start num of rows to read
		int endRow = startRow + limit - 1; // the end num of rows to read
		
		List<documentDTO> docList = new ArrayList<documentDTO>(endRow);

		try {
			con = db.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				documentDTO doc = new documentDTO();
				doc.setDocId(rs.getInt("DID"));
				doc.setDocStateCode(rs.getInt("DOCUMENTS_STATE_DCODE"));
				doc.setDocTitle(rs.getString("DOC_TITLE"));
				doc.setDocDayStart(rs.getString("DOC_DAY_START"));
				doc.setDocDayEnd(rs.getString("DOC_DAY_END"));
				doc.setDocContents(rs.getString("DOC_CONTENTS"));
				doc.setDocLocId(rs.getInt("LOCATIONS_ID"));
				doc.setDocLangId(rs.getInt("LANGUAGES_ID"));
				doc.setDocMemNo(rs.getInt("LANGUAGES_ID"));

				//System.out.println("제목: " + doc.getDocTitle());
				//System.out.println("상태: " + doc.getDocStateCode());
				
				docList.add(doc);
			}
			return docList;
		} catch (Exception e) {
			System.out.println("getDocumentList error : " + e);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
		return null;
	}

	// write a document
	public boolean writeDocument(documentDTO doc) {
		int num = 0;
		int result = 0;
		String sql = "";

		try {
			con = db.getConnection();
			pstmt = con.prepareStatement("select max(DID) from DOCUMENTS");
			rs = pstmt.executeQuery();

			if (rs.next())
				num = rs.getInt(1) + 1;
			else
				num = 1;

			sql = "INSERT INTO DOCUMENTS (DID, MEMBERS_MNO, DOCUMENTS_STATE_DCODE, LANGUAGES_ID, LOCATIONS_ID,"
					+ " PICTURES_ID, DOC_TITLE, DOC_DAY_START, DOC_DAY_END, DOC_CONTENTS) VALUES(?,?,1,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, doc.getDocMemNo());
			pstmt.setInt(3, doc.getDocLangId());
			pstmt.setInt(4, doc.getDocLocId());
			pstmt.setInt(5, doc.getDocPicId());
			pstmt.setString(6, doc.getDocTitle());
			pstmt.setString(7, doc.getDocDayStart());
			pstmt.setString(8, doc.getDocDayEnd());
			pstmt.setString(9, doc.getDocContents());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception e) {
			System.out.println("writeDocument error : " + e);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
		return false;
	}

	// modify a document
	public boolean modifyDocument(documentDTO modified) throws Exception {
		String sql = "UPDATE DOCUMENTS SET DOC_TITLE = ?, DOC_DAY_START = ?, DOC_DAY_END = ?, DOC_CONTENTS =? WHERE DID = ?";

		try {
			con = db.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, modified.getDocTitle());
			pstmt.setString(2, modified.getDocDayStart());
			pstmt.setString(3, modified.getDocDayEnd());
			pstmt.setString(4, modified.getDocContents());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("modifyDocument error" + e);
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException e) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (SQLException e) {
				}
		}
		return false;
	}

	// delete a document
	public boolean deleteDocument(int num) {
		String sql = "DELETE FROM DOCUMENTS WHERE DID = ?";

		int result = 0;

		try {
			con = db.getConnection();
			pstmt.getConnection().prepareStatement(sql);
			pstmt.setInt(1, num);
			result = pstmt.executeUpdate();

			if (result == 0)
				return false;

			return true;
		} catch (Exception e) {
			System.out.println("deleteDocument error : " + e);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		return false;
	}

	// check if the member
	public boolean isWriter(int num, String memeber) {
		String sql = "SELECT * FROM DOCUMENTS where DID = ?";

		try {
			con = db.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			rs.next();

			if (memeber.equals(rs.getString("DOC_MEM_NO")))
				return true;
		} catch (SQLException e) {
			System.out.println("isWriter error" + e);
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception e) {
			}
		}
		return false;
	}

}
