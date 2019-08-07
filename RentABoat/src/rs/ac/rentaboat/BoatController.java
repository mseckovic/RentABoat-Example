package rs.ac.rentaboat;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import rs.ac.rentaboat.Boat;

@WebServlet("/BoatController")
public class BoatController extends HttpServlet{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Boat> vozila = new ArrayList<Boat>();
		try {
			
            Class.forName("com.mysql.jdbc.Driver");
            // loads driver
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud_ispit", "student", "student"); // gets a new connection
            
            PreparedStatement ps = c.prepareStatement("select * from brod");
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	String marka = rs.getString("marka_broda");
            	String model = rs.getString("modal_broda");
            	String godina = rs.getString("godina_proizvodnje");
            	int cena = Integer.parseInt(rs.getString("cena"));
            	Boat v = new Boat(model,marka,godina,cena);
            	vozila.add(v);
            }
            request.setAttribute("vozilo", vozila);
            RequestDispatcher rd = request.getRequestDispatcher("boat.jsp");
            rd.forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
		
	}
	 @Override
	    protected void doGet(HttpServletRequest request, 
	                        HttpServletResponse response) 
	        throws ServletException, IOException 
	    { 
	        processRequest(request, response); 
	    } 
	    @Override
	    protected void doPost(HttpServletRequest request, 
	                        HttpServletResponse response) 
	        throws ServletException, IOException 
	    { 
	        processRequest(request, response); 
	    } 
}
