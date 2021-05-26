

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

/**
 * Servlet implementation class edit
 */
@WebServlet("/edit")
public class edit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public edit() {
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
		String editname=request.getParameter("editname");
		Connection conn=null;
		//ResultSet rs=null;
		try { 
			String email=request.getParameter("email");
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
			Statement st=(Statement) conn.createStatement();
			//st.executeUpdate("insert into edituser(username,mobile,email,password) values('"+username+"','"+mobile+"','"+email+"','"+password+"')");
			PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement("update notesdesc set name=? where email=?");
			//st.executeUpdate("update userlogin set dob=? where name=?");
			pstmt.setString(1,editname);
			pstmt.setString(2,email);
			pstmt.executeUpdate();
			//String passwordu=null;
			conn.close();
		}
		catch(Exception e) {
			System.out.println("Exception is"+"\n");
			e.printStackTrace();
		}
	}

}
