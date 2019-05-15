package dao;

import java.util.ArrayList;

import model.Account;

public interface AccountDAO {
	// Kiem tra dang nhap
	public boolean checkLogin(String Username, String Password, int Access, int Status);

}
