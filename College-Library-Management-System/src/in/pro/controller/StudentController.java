package in.pro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.pro.dto.user;
import in.pro.dto.userAdmin;
import in.pro.service.UserService;
import in.pro.servicefactory.UserServiceFactory;
@WebServlet("/StudentController/*")
public class StudentController extends HttpServlet {
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
		if (request.getRequestURI().endsWith("student_register")) {
			    String name = request.getParameter("name");
		        String email = request.getParameter("email");
		        String contactNumber = request.getParameter("contact-number");
		        String password = request.getParameter("password");
		        String department = request.getParameter("department");
		        Integer id=0;
		        user student = new user(id, name,email,contactNumber,password, department);
		        
		        String status = studentService.registerStudent(student);
		        RequestDispatcher rd = null;
		        if (status.equals("success")) {
					request.setAttribute("status", "success");
					rd = request.getRequestDispatcher("../registationresult.jsp");
					rd.forward(request, response);
				} else if (status.equals("alreadyexit")) {
					request.setAttribute("status", "alreadyexit");
					rd = request.getRequestDispatcher("../registationresult.jsp");
					rd.forward(request, response);
				} else if (status.equals("failure")) {
					request.setAttribute("status", "failure");
					rd = request.getRequestDispatcher("../registationresult.jsp");
					rd.forward(request, response);
				}
		        
		}
		if (request.getRequestURI().endsWith("Student_login")) {
			 String email = request.getParameter("email");
			 String password = request.getParameter("password");
			 String phone = request.getParameter("phone");
			 String department = request.getParameter("department");
				
			 System.out.println("1");
			 user status = studentService.login(email,password);
			 System.out.println("2");
			 String verificationemail = status.getEmail();
			 System.out.println(verificationemail);
			 System.out.println(email);
			 String verificationpassword = status.getPassword();
			 System.out.println(verificationpassword);
			 System.out.println(password);
			 RequestDispatcher rd = null;
			 if(email.equalsIgnoreCase(verificationemail)&&password.equals(verificationpassword)) {
				
				 rd = request.getRequestDispatcher("../StudentMainPage.jsp");
				 rd.forward(request, response);
			 }else {
				 rd = request.getRequestDispatcher("../registationresult.jsp");
				 rd.forward(request, response);
			 }

		}
		if(request.getRequestURI().endsWith("searchbook")) {
			String bookname = request.getParameter("book_title");
			
			userAdmin searchbook = studentService.searchbook(bookname);
			request.setAttribute("searchbook", searchbook);

			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("../searchbookresult.jsp");
			rd.forward(request, response);
		}
		
		
		
	}
}
