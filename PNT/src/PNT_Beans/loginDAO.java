package PNT_Beans;

import java.sql.*;

public class loginDAO {
	UseDB db;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

	public loginDAO() {
		try {
			db = new UseDB();
			con = null;
			pstmt = null;
			rs = null;
		} catch (Exception e) {
			System.out.println("loginDAO error : " + e);
			return;
		}
	}

	// check the login
	public boolean login(String _id, String _pwd) {
		try {
			System.out.println("checkpoint 0");
			if (_id == null || _pwd == null) {
				System.out.println("id or password is null");
				return false;
			}

			if (!db.startDBConnection()) {
				System.out.println("DBconnection error");
				return false;
			}

			String sql = "SELECT COUNT(*) FROM MEMBERS WHERE ID='" + _id + "' AND PASSWORD='" + _pwd + "'";
			con = db.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);
			while (rs.next()) {
				String count = rs.getString(1);
				if (count.equals("1"))
					return true;
			}
			return false;
		} catch (Exception e) {
			System.out.println("loginMember error : " + e);
			return false;
		}
	}
}
