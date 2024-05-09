import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		try {
			
			String myuser = req.getParameter("username");
			String mypass = req.getParameter("password");
			String myemail = req.getParameter("email");
			String myphone = req.getParameter("phone");
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/voters", "root", "root");
			PreparedStatement pre = con.prepareStatement("insert into register1 values(?,?,?,?)");
			pre.setString(1, myuser);
			pre.setString(2, mypass);
			pre.setString(3, myemail);
			pre.setString(4, myphone);

			int count = pre.executeUpdate();

			if (count > 0) {
				req.setAttribute("registrationSuccess", true);

			} else {
				resp.setContentType("text/html");
				
				out.print("<h3 style='color:red'>User not  Registered Succefully</h3>");
				RequestDispatcher rd = req.getRequestDispatcher("/Registration.jsp");
				rd.include(req, resp);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resp.setContentType("text/html");
			out.print("<h3 style='color:red'>User not  Registered Succefully</h3>");
			RequestDispatcher rd = req.getRequestDispatcher("/Registration.jsp");
			rd.include(req, resp);
		}
		 req.getRequestDispatcher("Registration.jsp").forward(req, resp);
	}
}
