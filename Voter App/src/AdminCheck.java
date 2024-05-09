import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminform")
public class AdminCheck extends HttpServlet{
 @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	 PrintWriter out=resp.getWriter();
	try {
		String name=req.getParameter("adminname");
		String password=req.getParameter("password");
		if(password.equals("admin")&& name.equals("admin")) {
			RequestDispatcher rd=req.getRequestDispatcher("AdminInterface.jsp");
			rd.forward(req, resp);
		}
		else {
			out.println("<font color='red'<h1>You have entered incorrect password</h1></font>");
	          RequestDispatcher rd=req.getRequestDispatcher("AdminLogin.jsp");
	          rd.include(req,resp);
		}
	}
	catch (Exception e) {
		// TODO: handle exception
	}
 }
}
