package rs.ac.rentaboat;
import java.io.IOException;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import rs.ac.rentaboat.User;
import rs.ac.rentaboat.UserDbUtil;

@WebServlet("/UserControllerServlet")
public class UserController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private UserDbUtil UserDbUtil;
	@Resource(name="jdbc/cloud_ispit")
	private DataSource dataSource;
	@Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			UserDbUtil = new UserDbUtil(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");
			
			// if the command is missing, then default to listing students
			if (theCommand == null) {
				theCommand = "index";
			}
			
			// route to the appropriate method
			switch (theCommand) {
			case "LogoutController":
				response.sendRedirect("index.jsp");
				break;
			case "index":
				response.sendRedirect("index.jsp");
				break;
			case "LIST":
				listUser(request, response);
				break;
				
			case "ADD":
				addUser(request, response);
				break;
				
			case "LOAD":
				loadUser(request, response);
				break;
				
			case "UPDATE":
				updateUser(request, response);
				break;
			
			case "DELETE":
				deleteUser(request, response);
				break;
				
			default:
				listUser(request, response);
			}
				
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
		
	}
	private void deleteUser(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

			// read student id from form data
			String username = request.getParameter("username");
			
			// delete student from database
			UserDbUtil.deleteUser(username);
			
			// send them back to "list students" page
			listUser(request, response);
		}
	private void updateUser(HttpServletRequest request, HttpServletResponse response)
			throws Exception {		
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			// create a new student object
			User theUser = new User(firstName, lastName, email,username,password);
			
			// perform update on database
			UserDbUtil.updateUser(theUser);
			
			// send them back to the "list students" page
			listUser(request, response);
			
		}
	private void loadUser(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {

			// read student id from form data
			String username = request.getParameter("username");
			
			// get student from database (db util)
			User theUser = UserDbUtil.getUser(username);
			
			// place student in the request attribute
			request.setAttribute("THE_User", theUser);
			
			// send to jsp page: update-student-form.jsp
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/update-User-form.jsp");
			dispatcher.forward(request, response);		
		}
	private void addUser(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student info from form data
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");		
		String username = request.getParameter("username");	
		String password = request.getParameter("password");	
		// create a new student object
		User theUser = new User(firstName, lastName, email,username,password);
		
		// add the student to the database
		UserDbUtil.addUser(theUser);
				
		// send back to main page (the student list)
		listUser(request, response);
	}
	private void listUser(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {

			// get students from db util
			List<User> users = UserDbUtil.getUsers();
			
			// add students to the request
			request.setAttribute("User_LIST", users);
					
			// send to JSP page (view)
			RequestDispatcher dispatcher = request.getRequestDispatcher("/list-user.jsp");
			dispatcher.forward(request, response);
		}
}
