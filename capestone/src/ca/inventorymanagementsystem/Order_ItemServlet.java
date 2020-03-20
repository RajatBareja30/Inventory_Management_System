package ca.inventorymanagementsystem;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement.ParseInfo;


/**
 * Servlet implementation class Order_ItemServlet
 */
@WebServlet("/Order_ItemServlet")
public class Order_ItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final String CREDENTIAL_STRING = "jdbc:mysql://google/Inventory?cloudSqlInstance=nirav-2311:northamerica-northeast1:inventory"
			+ "&socketFactory=com.google.cloud.sql.mysql.SocketFactory&useSSL=false&user=Nirav_Sorathia&password=nirav#2311";
	static Connection connection = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order_ItemServlet() {
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
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(CREDENTIAL_STRING);
			PrintWriter p = response.getWriter();	
			String id = request.getParameter("id");
			String quantity = request.getParameter("quantity");
			p.write("Id " +id);
			p.write("Quantity \n" +quantity);
			
			String query = "select * from New_Items where Item_Id = '"+id+"'";
			PreparedStatement p1 = connection.prepareStatement(query);
			ResultSet rs = p1.executeQuery();
				while(rs.next())
				{
				String current = rs.getString("Quantity");
				p.write("Available Stock \n" +current);
				
				
				int intquantity = Integer.parseInt(quantity);	
				int intcurntstock = Integer.parseInt(current);
				
				int newStock  = intquantity + intcurntstock;
				p.write("newStock" +newStock);
				p.write("Current" + intcurntstock);
				p.write("New" +intquantity);
				
				
				String query2 = "update New_Items set Quantity =? WHERE Item_ID = '"+id+"' ";
				PreparedStatement p2 = connection.prepareStatement(query2);
							
				p2.setInt(1, newStock);
				p2.executeUpdate();
				response.sendRedirect("order_item.jsp");
				}	
			}
		 catch (Exception e) {
			e.printStackTrace();
		}
		
		//doGet(request, response);
	}

}
