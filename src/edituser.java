

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
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class edituser
 */
@WebServlet("/edituser")
public class edituser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edituser() {
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
		String username=request.getParameter("username");
		String mobile=request.getParameter("mobile");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		Connection conn=null;
		//ResultSet rs=null;
		try { 
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
			Statement st=(Statement) conn.createStatement();
			st.executeUpdate("insert into edituser(username,mobile,email,password) values('"+username+"','"+mobile+"','"+email+"','"+password+"')");
			PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement("update userlogin set name=?,mobile=?,password=? where email=?");
			//st.executeUpdate("update userlogin set dob=? where name=?");
			pstmt.setString(1,username);
			pstmt.setString(2,mobile);
			pstmt.setString(3,password);
			pstmt.setString(4,email);
			pstmt.executeUpdate();
			//String passwordu=null;
			conn.close();
			response.sendRedirect("login1.jsp");
		}
		catch(Exception e) {
			System.out.println("Exception is"+"\n");
			e.printStackTrace();
		}
	}

}
