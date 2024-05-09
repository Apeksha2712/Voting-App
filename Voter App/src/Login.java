import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Vlogin")
public class Login extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		String myuser = req.getParameter("username");
		String mypass = req.getParameter("password");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "root");
			PreparedStatement pre = con.prepareStatement("Select * from register1 Where username=? And password=?");
			pre.setString(1, myuser);
			pre.setString(2, mypass);
			ResultSet rs = pre.executeQuery();
			if (rs.next()) {
				 resp.sendRedirect("Voting.jsp");
			} else {
				resp.setContentType("text/html");
				out.print("<h3 style='color:red'>invalis Username and Password</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'>Exception Occured:"+e.getMessage()+"</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/Login.jsp");
			rd.include(req, resp);
		}
	
	}
}
