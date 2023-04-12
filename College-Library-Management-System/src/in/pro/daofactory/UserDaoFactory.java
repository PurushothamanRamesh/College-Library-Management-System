package in.pro.daofactory;


import in.pro.dao.UserDao;
import in.pro.dao.UserDaoImpl;
public class UserDaoFactory {

	private UserDaoFactory() {}

	private static UserDao studentDao = null;

	public static UserDao getuserDao() {
		if (studentDao == null) {
			studentDao = new UserDaoImpl();
		}
		return studentDao;
	}
}
