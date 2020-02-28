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
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
	   		+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311"; 
	   static Connection connection = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter p = response.getWriter();
		
		
		
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);
			
			String jspFirstname = request.getParameter("firstname");
			String jspLastname = request.getParameter("lastname");
			String jspEmail = request.getParameter("email");
			String jspPassword = request.getParameter("password");
//			String jspConfirmPassword = request.getParameter("passConfirm");
			String jspPhone = request.getParameter("phone");
			String jspgender = request.getParameter("gender");
			

			
			PreparedStatement p1 = connection.prepareStatement("insert into Employee_Registration (First_Name,Last_Name,Password,Phone,Email,Gender) values\r\n" + 
					"('"+jspFirstname+"','"+jspLastname+"','"+jspPassword+"','"+jspPhone+"','"+jspEmail+"','"+jspgender+"');");
			
	
			int r = p1.executeUpdate();
			
//			p.print("helloo again");
//			while(r.next()) {
//				String dbusername = r.getString("Username");
//				String dbpassword = r.getString("Password");
//				//response.getWriter().append(dbusername);
//				//response.getWriter().append(dbpassword);
//				
//				if(dbusername.equals(jspusername) && dbpassword.equals(jsppassword)) {
//					request.getRequestDispatcher("dashboard.jsp").forward(request, response);
//				}
//				else {
//					response.setContentType("Text/html");		
//					out.print(" <div><h1> Invalid Credentials!!</h1></div> ");
//					request.getRequestDispatcher("login.jsp").include(request, response);
//					
//				}
//				
//				
//			}
			//p.print("Data_Inserted \n");
			//p.print(r + " row affected");
			request.getRequestDispatcher("registration.jsp").include(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	
		
//		doGet(request, response);
	}

}
