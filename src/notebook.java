

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
 * Servlet implementation class notebook
 */
@WebServlet("/notebook")
public class notebook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public notebook() {
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
		String name=request.getParameter("name");
		String status=request.getParameter("status");
		String description=request.getParameter("description");
		String startdate=request.getParameter("startdate");
		String enddate=request.getParameter("enddate");
		String reminderdate=request.getParameter("reminderdate");
		
		Connection conn=null;
		ResultSet rs=null;
		PreparedStatement stmt = null;
		try { 
			String email=request.getParameter("email");
			System.out.println(email);
			Class.forName("com.mysql.jdbc.Driver");
			conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/new1","root","root");
			Statement st=(Statement) conn.createStatement();
			//stmt = (PreparedStatement) conn.prepareStatement("select a.email from userlogin a,notebook b where a.email=b.email");
			//String emailID=null;
			st.executeUpdate("insert into notes(name)values('"+name+"')");
			st.executeUpdate("insert into notesdesc(name,status,description,startdate,enddate,reminderdate) values('"+name+"','"+status+"','"+description+"','"+startdate+"','"+enddate+"','"+reminderdate+"')");
			PreparedStatement pstmt = (PreparedStatement) conn.prepareStatement("update notebook set name=?,status=?,description=?,startdate=?,enddate=?,reminderdate=? where email=?");
			pstmt.setString(1,name);
			pstmt.setString(2,status);
			pstmt.setString(3,description);
			pstmt.setString(4,startdate);
			pstmt.setString(5,enddate);
			pstmt.setString(6,reminderdate);
			pstmt.setString(7, email);
			pstmt.executeUpdate();
			conn.close();
			response.sendRedirect("notebooks.jsp");
		}
		catch(Exception e) {
			System.out.println("Exception is"+"\n");
			e.printStackTrace();
		}
		
	}

}
