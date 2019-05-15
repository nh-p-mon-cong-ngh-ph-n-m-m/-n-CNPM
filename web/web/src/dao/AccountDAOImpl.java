package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.DBConnection;
import model.Account;

public class AccountDAOImpl implements AccountDAO {

	@Override
	public boolean checkLogin(String Username, String Password, int Access, int Status) {
		Connection ketNoi = DBConnection.getConnection();
		String sql = "SELECT * FROM Account WHERE username ='" + Username + "'and password='" + Password
				+ "' and Access='" + 2 + "' and status ='" + 1 + "'";
		try {
			PreparedStatement ps = ketNoi.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
