package DAO;
import model.User;

public interface DAOinterface {
	User get(String username);
	void insert(User user);
	boolean checkExistEmail(String email);
	boolean checkExistUsername(String username);
	boolean checkExistPhone(String phone);
	public boolean updatePassword(String username, String newPassword);
}
