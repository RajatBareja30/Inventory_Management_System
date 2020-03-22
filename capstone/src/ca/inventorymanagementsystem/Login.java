package ca.inventorymanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
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

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
	   		+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311"; 
	   static Connection connection = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);
			
			String jspusername = request.getParameter("username");
			String jsppassword = request.getParameter("password");
			PrintWriter out = response.getWriter();
			//out.print(jsppassword);
			//out.print(jspusername);
			
			PreparedStatement p1 = connection.prepareStatement("SELECT * FROM Login_Table");
			ResultSet r = p1.executeQuery();
			while(r.next()) {
				String dbusername = r.getString("Username");
				String dbpassword = r.getString("Password");
				//response.getWriter().append(dbusername);
				//response.getWriter().append(dbpassword);
				
				if(dbusername.equals(jspusername) && dbpassword.equals(jsppassword)) {
					request.getRequestDispatcher("dashboard.jsp").forward(request, response);
				}
				else {
					response.setContentType("Text/html");		
					out.print(" <div><h1> Invalid Credentials!!</h1></div> ");
					request.getRequestDispatcher("login.jsp").include(request, response);
					
				}
				
				
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
