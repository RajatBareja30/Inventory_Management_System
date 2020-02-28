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
 * Servlet implementation class AddItem
 */
@WebServlet("/AddItem")
public class AddItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
			+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311";
	static Connection connection = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddItemServlet() {
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

		p.write("Jay Swaminarayan Welcome to Additem servlet");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);

			String jspItemname = request.getParameter("itemname");
			String jspPrice = request.getParameter("price");
			String jspQuantity = request.getParameter("quantity");
			String jspCategory = request.getParameter("Category_Table.Category_Name");

			PreparedStatement p1 = connection
					.prepareStatement("insert into New_Items (Item_Name,Price,Quantity,Category) values\r\n" + "('"
							+ jspItemname + "','" + jspPrice + "','" + jspQuantity + "','" + jspCategory + "');");

			int r = p1.executeUpdate();
			p.print("Data_Inserted \n");
			p.print(r + " row affected");
			request.getRequestDispatcher("add_item_manually.jsp").forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
