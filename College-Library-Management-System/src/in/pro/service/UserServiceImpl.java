package in.pro.service;

import java.util.List;

import in.pro.dao.UserDao;
import in.pro.daofactory.UserDaoFactory;
import in.pro.dto.user;
import in.pro.dto.userAdmin;

public class UserServiceImpl implements UserService {
	
	private UserDao stdDao;

	@Override
	public String registerStudent(user student) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.registerStudent(student);
	}
	

	@Override
	public user login(String email,String Password ) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.loginstudent(email, Password);
	}
	public user Adminlogin(String email,String Password ) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.Adminlogin(email, Password);
	}


	@Override
	public String addbook(userAdmin admin) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.addbook(admin);
		
	}


	@Override
	public userAdmin searchbook(String bookname) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.searchbook(bookname);
	}


	@Override
	public String updatebook(userAdmin admin) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.updatebook(admin);
	}


	@Override
	public String deletebook(Integer id) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.deletebook(id);
	}


	@Override
	public List<userAdmin> viewallbooks() {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.viewallbooks();
	}
	@Override
	public List<user> viewallstudents() {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.viewallstudents();
	}


	@Override
	public String deletestudent(Integer sid) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.deletestudent(sid);
	}


	@Override
	public user searchstudent(Integer sid) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.searchstudent(sid);
	}


	@Override
	public String returnbook(Integer bookid,String date) {
		stdDao=UserDaoFactory.getuserDao();
		return stdDao.returnbook(bookid,date);
	}


	
}
