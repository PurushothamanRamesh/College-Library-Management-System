package in.pro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.Stdlib;

import in.pro.dto.user;
import in.pro.dto.userAdmin;
import in.pro.service.UserService;
import in.pro.servicefactory.UserServiceFactory;
@WebServlet("/Admin/*")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		UserService studentService = UserServiceFactory.getStudentService();
		System.out.println("Request URI :: " + request.getRequestURI());
		System.out.println("Path info   :: " + request.getPathInfo());
		if (request.getRequestURI().endsWith("Admin_login")) {
			 String email = request.getParameter("email");
			 String password = request.getParameter("password");
			 user student = new user();
			 student.setEmail(email);
			 user status = studentService.Adminlogin(email,password);
			 String verificationemail = status.getEmail();
			 String verificationpassword = status.getPassword();
			 RequestDispatcher rd=null;
			 System.out.println(email);
			 System.out.println(verificationemail);
			 System.out.println(verificationpassword);
			 if(email.equalsIgnoreCase(verificationemail)&&password.equals(verificationpassword)) {
				 System.out.println("logi succesfull");
				 rd = request.getRequestDispatcher("../AdminMainPage.jsp");
				 rd.forward(request, response);
				 System.out.println("Request URI :: " + request.getRequestURI());
				System.out.println("Path info   :: " + request.getPathInfo());
				 
			 }else {
				 System.out.println("wrong user name password  ");
			 }

		}
		
	}
}
