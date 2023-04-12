package in.pro.dao;


import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;


import in.pro.dto.user;
import in.pro.dto.userAdmin;
import in.pro.util.JdbcUtil;



public class UserDaoImpl implements UserDao {
	Connection connection = null;
	PreparedStatement pstmt = null;
	ResultSet resultSet = null;

	@Override
	public String registerStudent(user student) {
		String emailexitscheck = "select email from student where email = ?";
		String sqlInsertQuery = "insert into student(`name`,`email`,`contactNumber`,`password`,`department`)values(?,?,?,?,?)";
		String email=student.getEmail();
		System.out.println(email);
		user user=null;
		String e1="";
		try {
			connection = JdbcUtil.getJdbcConnection();
			if (connection != null) {
				pstmt = connection.prepareStatement(emailexitscheck);
			}
			if (pstmt != null)
				pstmt.setString(1, email);
			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}
			
			
			if (resultSet != null) {
				if (resultSet.next()) {
					user = new user();
				   e1=resultSet.getString(1);
					user.setEmail(resultSet.getString(1));
					System.out.println("done");
					System.out.println(e1);
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}
		
		if (email.equalsIgnoreCase(e1))
		{
			System.out.println("already email exit try to login ");
			return "alreadyexit";
			
		}
		else {
			System.out.println("new email check part ");
			try {
				connection = JdbcUtil.getJdbcConnection();
				System.out.println("else part ");
				System.out.println(student.getEmail());
				

				if (connection != null)
					pstmt = connection.prepareStatement(sqlInsertQuery);

				if (pstmt != null) {
					pstmt.setString(1, student.getName());
					pstmt.setString(2, student.getEmail());
					pstmt.setString(3, student.getContactNumber());
					pstmt.setString(4, student.getPassword());
					pstmt.setString(5, student.getDepartment());
					int rowAffected = pstmt.executeUpdate();
					if (rowAffected == 1) {
						return "success";
					}
				}
				} catch (SQLException | IOException e) {
				e.printStackTrace();}

				}
		
		return "failure";
		
}
	

	@Override
	public user loginstudent(String email,String Password) {
		user student = null;
		String sqlSelectQuery = "select email,password from student where email =?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null)
				pstmt.setString(1, email);
			   

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			if (resultSet != null) {

				if (resultSet.next()) {
					student = new user();
					student.setEmail(resultSet.getString(1));
					student.setPassword(resultSet.getString(2));
					
					return student;
				}

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return student;
	}


	public user Adminlogin(String email, String Password) {
		user admin = null;
		String sqlSelectQuery = "select email,password from admin where email = ?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null)
				pstmt.setString(1, email);

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			if (resultSet != null) {

				if (resultSet.next()) {
					admin = new user();
					admin.setEmail(resultSet.getString(1));
					admin.setPassword(resultSet.getString(2));
					
					return admin;
				}

			}

		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return admin;
	}



	public String addbook(userAdmin admin) {
		String sqlInsertQuery = "insert into books(`bookname`,`author`,`bookid`,`publisher`)values(?,?,?,?)";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlInsertQuery);

			if (pstmt != null) {

				pstmt.setString(1,admin.getBookname() );
				pstmt.setString(2, admin.getAuthor());
				pstmt.setInt(3, admin.getBookid());
				pstmt.setString(4, admin.getPublisher());

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return "failure";
		
	}


	


	@Override
	public String updatebook(userAdmin admin) {
		String sqlUpdateQuery = "update books set bookname=?,author=?,publisher=? where bookid=?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlUpdateQuery);

			if (pstmt != null) {

				pstmt.setString(1, admin.getBookname());
				pstmt.setString(2, admin.getAuthor());
				pstmt.setString(3, admin.getPublisher());
				pstmt.setInt(4, admin.getBookid());

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return "failure";
	}


	@Override
	public String deletebook(Integer id) {
		String sqlDeleteQuery = "delete from books where bookid = ?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlDeleteQuery);

			if (pstmt != null) {

				pstmt.setInt(1, id);

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				} else {
					return "notfound";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
			return "failure";
		}
		return "failure";
	}


	@Override
	public List<userAdmin>  viewallbooks() {
		String sqlSelectQuery = "select * from books ";
		userAdmin bookstatus = null;
		List<userAdmin> books = new ArrayList<>();
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			 while (resultSet.next()) {
					 int bookid = resultSet.getInt("bookid");
		             String title = resultSet.getString("bookname");
		             String author = resultSet.getString("author");
		             String publisher = resultSet.getString("publisher");
		             userAdmin book = new userAdmin(bookid, title, author, publisher);
		             books.add(book);

			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return books;
		
	}


	@Override
	public String deletestudent(Integer sid) {
		String sqlDeleteQuery = "delete from student where id = ?";
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlDeleteQuery);

			if (pstmt != null) {

				pstmt.setInt(1, sid);

				int rowAffected = pstmt.executeUpdate();
				if (rowAffected == 1) {
					return "success";
				} else {
					return "not found";
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
			return "failure";
		}
		return "failure";
	}


	@Override
	public user searchstudent(Integer sid) {
		String sqlSelectQuery = "select name,email,contactNumber,department from student where id = ?";
		user user = null;

		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null)
				pstmt.setInt(1, sid);

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			if (resultSet != null) {

				if (resultSet.next()) {
					user = new user();
					user.setName(resultSet.getNString(1));
					user.setEmail(resultSet.getNString(2));					
					user.setContactNumber(resultSet.getString(3));
					user.setDepartment(resultSet.getString(4));
					return user;
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return user;
	}


	public String returnbook(Integer bookid, String parameter) {
		    
	        userAdmin admin = new userAdmin();
	        String emailexitscheck = "select bookid from books where bookid = ?";
	        try {
				connection = JdbcUtil.getJdbcConnection();
				if (connection != null) {
					pstmt = connection.prepareStatement(emailexitscheck);
				}
				if (pstmt != null)
					pstmt.setInt(1, bookid);
				if (pstmt != null) {
					resultSet = pstmt.executeQuery();
				}
				
				if (resultSet != null) {
					if (resultSet.next()) {
					
					   String e11 = resultSet.getString(1);
						admin.setBookid(Integer.parseInt(resultSet.getString(1)));
						System.out.println("done");
						System.out.println(e11);
					}
				}
				int bookid2 = admin.getBookid();
				if (bookid==bookid2) {
					LocalDate today = LocalDate.now();
				    LocalDate olddate =LocalDate.parse(parameter);
			        long daysLate = Math.abs(ChronoUnit.DAYS.between(olddate, today) - 10);
			        
			        System.out.println(daysLate);
			        double fineAmount = daysLate > 10 ? daysLate * 10 : 0;
			        System.out.println(fineAmount);	
			        if (daysLate>15) {
			        	String data="YOU ARE LATE FOR :: "+daysLate +" DAYS LATE !!  SO YOU NEED TO PAY :: "+fineAmount+" FINEAMOUNT";
						return data;
					}else if (daysLate>0 && daysLate<=15) {
			        	String data="THNAKS FOR RETURNING IN  :: "+daysLate+" DAYS " ;
			        	return data;
					}
				}
				
			} catch (SQLException | IOException e) {
				e.printStackTrace();
			}
	        
	        
	        return "ERROR";
	}


	@Override
	public userAdmin searchbook(String bookname) {
		String sqlSelectQuery = "select bookname,author,publisher,bookid from books where bookname= ?";
		userAdmin bookstatus = null;

		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null)
				pstmt.setString(1,bookname );

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			if (resultSet != null) {

				if (resultSet.next()) {
					bookstatus = new userAdmin();
					
					bookstatus.setBookname(resultSet.getNString(1));
					bookstatus.setAuthor(resultSet.getNString(2));
					bookstatus.setPublisher(resultSet.getNString(3));					
					bookstatus.setBookid(resultSet.getInt(4));
					return bookstatus;
				}
			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return bookstatus;
	}


	@Override
	public List<user> viewallstudents() {
		String sqlSelectQuery = "select * from student ";
		userAdmin studentlist = null;
		List<user> student = new ArrayList<>();
		try {
			connection = JdbcUtil.getJdbcConnection();

			if (connection != null)
				pstmt = connection.prepareStatement(sqlSelectQuery);

			if (pstmt != null) {
				resultSet = pstmt.executeQuery();
			}

			 while (resultSet.next()) {
				     Integer id = resultSet.getInt("id");
					 String name = resultSet.getString("name");
		             String email = resultSet.getString("email");
		             String contactNumber = resultSet.getString("contactNumber");
		             String department = resultSet.getString("department");
		             String password ="";
		             user students = new user(id,name, email,contactNumber, password, department);
		             student.add(students);

			}
		} catch (SQLException | IOException e) {
			e.printStackTrace();
		}

		return student;
	}

	

}