package in.pro.service;

import java.util.List;

import in.pro.dto.user;
import in.pro.dto.userAdmin;

public interface UserService {
	public String registerStudent(user student);
	public user login(String email,String Password);
	public user Adminlogin(String email,String Password);
	public String addbook(userAdmin admin);
	public userAdmin searchbook(String bookname);
	public String updatebook(userAdmin admin);
	public String deletebook(Integer sid);
	public List<userAdmin> viewallbooks();
	public String deletestudent(Integer sid);
	public user searchstudent(Integer sid);
	public String returnbook(Integer bookid, String date);
	public List<user> viewallstudents();

}
