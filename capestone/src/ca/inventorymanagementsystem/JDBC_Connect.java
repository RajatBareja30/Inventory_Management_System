package ca.inventorymanagementsystem;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JDBC_Connect
 */
@WebServlet("/JDBC_Connect")
public class JDBC_Connect extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
   		+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311"; 
   static Connection connection = null;
    public JDBC_Connect() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);
			
			PreparedStatement p1 = connection.prepareStatement("SELECT * FROM Employee_Registration");
			ResultSet r = p1.executeQuery();
			while(r.next()) {
				String fnameString = r.getString("First_Name");
				String lnameString = r.getString("Last_Name");
				response.getWriter().append(fnameString);
				response.getWriter().append(lnameString);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
