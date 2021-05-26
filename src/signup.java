

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
 * Servlet implementation class signup
 */
@WebServlet("/signup")
public class signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signup() {
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
		String uname=request.getParameter("uname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String password=request.getParameter("password");
		String password1=request.getParameter("password1");
		PreparedStatement stmt = null;
		ResultSet rs=null;
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
		if (password.equals(password1)){
			Statement st=(Statement) conn.createStatement();
			st.executeUpdate("insert into userlogin(name,email,mobile,password) values('"+uname+"','"+email+"','"+mobile+"','"+password+"')");
			st.executeUpdate("insert into notebook(email)values('"+email+"')");
			conn.close();
		response.sendRedirect("login1.jsp");
		}
		else {
			response.sendRedirect("mismatch.jsp");
			
		}
		}
		catch(Exception e) {
			System.out.println("Exception is"+"\n");
			e.printStackTrace();
			//response.sendRedirect("fkyc.html");
		}
	}

}
