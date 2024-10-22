package myPackage;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/Reg")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static UserDao userDao = new UserDaoImp();

    public RegisterServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username= request.getParameter("username");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		User user = new User();
		user.setUsername(username);
		user.setEmail(email);
		user.setPassword(password);
		
		UserDao userDao = new UserDaoImp();
		
		if (userDao.addUser(user)) {
			response.sendRedirect("Login.jsp?registration=success");
		} else {
			response.sendRedirect("Register.jsp?error=1");
		}	
	}

}