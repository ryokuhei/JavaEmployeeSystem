package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TestDAO {

	public int insert(String name, String password) {
		
		ConnectionManager cm = ConnectionManager.getInstance();
		String sql = "INSERT INTO testdb.user (password, name) VALUES (?, ?)";
		int result = 0;

		try(Connection con = cm.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setNString(1, password);
			pstmt.setString(2, name);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
