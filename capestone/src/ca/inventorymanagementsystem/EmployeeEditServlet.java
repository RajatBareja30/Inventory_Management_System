package ca.inventorymanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
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
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/EmployeeEditServlet")
public class EmployeeEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
			+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311";
	static Connection connection = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmployeeEditServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);

			    String jspId = request.getParameter("id");
				String jspFirstname = request.getParameter("firstname");
				String jspLastname = request.getParameter("lastname");
				String jspEmail = request.getParameter("email");
				String jspPassword = request.getParameter("password");
				//String jspConfirmPassword = request.getParameter("passConfirm");
				String jspPhone = request.getParameter("phone");
				String jspgender = request.getParameter("gender");

				String query = "update Employee_Registration set First_Name =?,Last_Name =?,Password =?,Phone =?,Email =?,Gender =?  WHERE Employee_ID = '"+jspId+"' ";
				PreparedStatement p2 = connection.prepareStatement(query);
							
				p2.setString(1, jspFirstname);
				p2.setString(2, jspLastname);
				p2.setString(3, jspPassword);
				p2.setString(4, jspPhone);
				p2.setString(5, jspEmail);
				p2.setString(6, jspgender);
				
				p2.executeUpdate();
				response.sendRedirect("registration.jsp");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		

//		doGet(request, response);
	}

}
