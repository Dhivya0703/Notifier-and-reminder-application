

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLogin() {
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
		String email=request.getParameter("uname");
		String password=request.getParameter("password");
		PreparedStatement stmt = null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
		stmt = (PreparedStatement) conn.prepareStatement("select * from userlogin where email=? and password=?");
		stmt.setString(1, email);
		stmt.setString(2,password);
		ResultSet rs=null;
		rs=stmt.executeQuery();
		while(rs.next()) {
			System.out.println("username matched:"+email);
			System.out.println("value matches:"+password);
			System.out.println("user entered the correct username and password");
			response.sendRedirect("dashboard.jsp");
		}	
		
		conn.close();
		}
		catch(Exception e) {
			System.out.println("Exception is"+"\n");
			e.printStackTrace();
			response.sendRedirect("fkyc.html");
		}
	}

}
