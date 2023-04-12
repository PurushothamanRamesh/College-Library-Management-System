package in.pro.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

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

/**
 * Servlet implementation class commonservice
 */
@WebServlet("/operations/*")
public class Operations extends HttpServlet {
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
			throws ServletException, IOException  {
		UserService studentService = UserServiceFactory.getStudentService();
		System.out.println("Request URI :: " + request.getRequestURI());
		System.out.println("Path info   :: " + request.getPathInfo());
		
		if (request.getRequestURI().endsWith("addBook")) {
			String bookname = request.getParameter("bookname");
			String author = request.getParameter("author");
			String publisher = request.getParameter("publisher");
			int bookid = Integer.parseInt(request.getParameter("bookid"));
			userAdmin admin = new userAdmin(bookid,bookname,publisher,author);
			String status = studentService.addbook(admin);
			RequestDispatcher rd = null;
			request.setAttribute("status", status);
			rd = request.getRequestDispatcher("../addbookresult.jsp");
			rd.forward(request, response);
			
					
		}
		if(request.getRequestURI().endsWith("searchbook")) {
			String bookname = request.getParameter("book_title");
			
			userAdmin searchbook = studentService.searchbook(bookname);
			request.setAttribute("searchbook", searchbook);

			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("../searchbookresult.jsp");
			rd.forward(request, response);
		}
		if(request.getRequestURI().endsWith("updatebook")) {
			String bookname = request.getParameter("bookname");
			String author = request.getParameter("author");
			String publisher = request.getParameter("publisher");
			int bookid = Integer.parseInt(request.getParameter("bookid"));
			userAdmin updatebook = new userAdmin(bookid,bookname,publisher,author);
			String status = studentService.updatebook(updatebook);
			RequestDispatcher rd = null;

			if (status.equals("success")) {
				request.setAttribute("status", "success");
				rd = request.getRequestDispatcher("../updateresult.jsp");
				rd.forward(request, response);
			} else if (status.equals("failure")) {
				request.setAttribute("status", "failure");
				rd = request.getRequestDispatcher("../updateresult.jsp");
				rd.forward(request, response);

			} else {
				request.setAttribute("status", "not found");
				rd = request.getRequestDispatcher("../updateresult.jsp");
				rd.forward(request, response);
			}

		}
		
		if(request.getRequestURI().endsWith("deletebook")) {
			String id = request.getParameter("bookid");
			String status =studentService.deletebook(Integer.parseInt(id));
			RequestDispatcher rd = null;
			
			request.setAttribute("status",status);
			System.out.println(status);
			rd = request.getRequestDispatcher("../deletebookResult.jsp");
			rd.forward(request, response);
		}
		
		
		
		if(request.getRequestURI().endsWith("deletestudent")) {
			String id = request.getParameter("studentid");
			String status =studentService.deletestudent(Integer.parseInt(id));
			RequestDispatcher rd = null;
			request.setAttribute("status",status);
			System.out.println(status);
			rd = request.getRequestDispatcher("../deletestudentresult.jsp");
			rd.forward(request, response);

		}
		if(request.getRequestURI().endsWith("searchstudent")) {
			int bookid = Integer.parseInt(request.getParameter("isbn"));
			user searchstudent = studentService.searchstudent(bookid);
			request.setAttribute("searchstudent", searchstudent);

			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("../searchstudentresult.jsp");
			rd.forward(request, response);
		}
		
		
		
		if (request.getRequestURI().endsWith("viewallbooks")) {
			System.out.println("1");
			List<userAdmin> data = studentService.viewallbooks();
			request.setAttribute("data", data);
			System.out.println(data);

			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("../viewallbooksresult.jsp");
			rd.forward(request, response);
			
		}
		
		if (request.getRequestURI().endsWith("viewallstudents")) {
			System.out.println("1");
			List<user> data = studentService.viewallstudents();
			request.setAttribute("data", data);
			System.out.println(data);

			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("../viewallstudentresult.jsp");
			rd.forward(request, response);
			
		}
		if (request.getRequestURI().endsWith("returnbook")) {
			int bookid = Integer.parseInt(request.getParameter("isbn"));
			 String parameter = request.getParameter("date");
			 String returnbook = studentService.returnbook(bookid, parameter);
			 request.setAttribute("returnbook",returnbook);
			 System.out.println(returnbook);
			 RequestDispatcher rd = null;
			 rd = request.getRequestDispatcher("../returnbookresult.jsp");
			 rd.forward(request, response);
		
			
			
		}
	}
	
	
	
}
