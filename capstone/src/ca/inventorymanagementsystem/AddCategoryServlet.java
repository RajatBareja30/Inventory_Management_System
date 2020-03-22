package ca.inventorymanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCategoryServlet
 */
@WebServlet("/AddCategoryServlet")
public class AddCategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
			+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311";
	static Connection connection = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCategoryServlet() {
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
		PrintWriter p = response.getWriter();

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);
			String jspCategoryname = request.getParameter("addcategory");
			PreparedStatement p1 = connection.prepareStatement(
					"insert into Category_Table (Category_Name) values\r\n" + "('" + jspCategoryname + "');");
			int r = p1.executeUpdate();
			p.print("Data_Inserted \n");
			p.print(r + " row affected");
			request.getRequestDispatcher("Add_Category.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
