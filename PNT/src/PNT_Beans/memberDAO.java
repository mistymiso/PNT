package PNT_Beans;

import PNT_Beans.UseDB;
import PNT_Beans.memberDTO;
import java.sql.*;

public class memberDAO {
	UseDB db;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public memberDAO() {
		try {
			db = new UseDB();
			con = null;
			pstmt = null;
			rs = null;
		} catch (Exception e) {
			System.out.println("memberDAO error : " + e);
			return;
		}
	}

	// join member
	public boolean joinMember(memberDTO mem) {
		int num = 0;
		int result = 0;
		String sql = "";

		try {
			con = db.getConnection();
			pstmt = con.prepareStatement("SELECT MAX(MNO) FROM MEMBERS");
			rs = pstmt.executeQuery();

			if (rs.next())
				num = rs.getInt(1) + 1;
			else
				num = 1;

			sql = "INSERT INTO MEMBERS (MNO, LANGUAGES_ID, ID, PASSWORD, MTYPE, "
					+ "NAME, PHONE, MEMBERS_STATE_MCODE) VALUES(?,?,?,?,?,?,?,0)";

			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setInt(2, mem.getMemLangId());
			pstmt.setString(3, mem.getMemId());
			pstmt.setString(4, mem.getMemPass());
			pstmt.setString(5, "일반");
			pstmt.setString(6, mem.getMemName());
			pstmt.setString(7, mem.getMemPhone());

			result = pstmt.executeUpdate();
			if (result == 0)
				return false;

			return true;
		} catch (Exception e) {
			System.out.println("joinMember error : " + e);
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
	
}