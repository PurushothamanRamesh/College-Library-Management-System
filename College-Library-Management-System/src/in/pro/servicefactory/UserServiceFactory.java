package in.pro.servicefactory;

import in.pro.service.UserService;
import in.pro.service.UserServiceImpl;


//Abstraction logic of implementation
public class UserServiceFactory {

	//make constuctor private to avoid object creation
	private UserServiceFactory() {

	}

	private static UserService studentService = null;

	public static UserService getStudentService() {
		
		//singleton pattern code
		if (studentService == null) {
			studentService = new UserServiceImpl();
		}
		return studentService;
	}

}
