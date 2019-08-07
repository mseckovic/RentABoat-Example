package rs.ac.rentaboat;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegstrationController")
public class RegstrationController extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fn = request.getParameter("first_name");
		String ln = request.getParameter("last_name");
		String em = request.getParameter("email");
        String un = request.getParameter("username");
        String pw = request.getParameter("password");

        // Connect to mysql(mariadb) and verify username password

        try {
            Class.forName("com.mysql.jdbc.Driver");
            // loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_ispit", "student", "student"); // gets a new connection

            PreparedStatement ps = c.prepareStatement("INSERT INTO user(first_name,last_name,email,username,password)"
            		+ "VALUES (?,?,?,?,?)");
            ps.setString(1, fn);
            ps.setString(2, ln);
            ps.setString(3, em);
            ps.setString(4, un);
            ps.setString(5, pw);

            ps.execute();
            c.close();
            request.getSession().setAttribute("username", un);                
            response.sendRedirect("index.jsp");


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
