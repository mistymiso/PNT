package PNT_Beans;

import java.sql.*;

public class UseDB // 데이터베이스 연결 객체를 가져오는 클래스
{
	public final static String DB_URL = "jdbc:mariadb://localhost:3306/pnt?useUnicode=yes&CharacterEncoding=UTF-8";
	public final static String DB_USER = "root";
	public final static String DB_PASSWORD = "1234";
	public final static String DRIVER_NAME = "org.mariadb.jdbc.Driver";
	public Connection conn = null;
	public Statement stmt = null;

	public UseDB() {
		try {
			Class.forName(DRIVER_NAME);
		} catch (ClassNotFoundException e) {
			System.out.println(e.toString());
		}
	}

	public boolean startDBConnection() {
		try {
			conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
			stmt = conn.createStatement();
			return true;
		} catch (Exception e) {
			System.out.println("satrtDBConnection error : " + e);
			return false;
		}
	}

	public Connection getConnection() throws SQLException {
		return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	}
}
