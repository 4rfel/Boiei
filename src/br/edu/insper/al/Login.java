package br.edu.insper.al;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Array;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		PrintWriter out = response.getWriter();

		String password = request.getParameter("password");
		String username = request.getParameter("username");
		username = username.toLowerCase();
		if(!password.isEmpty() || !username.isEmpty()) {
			DAO dao = new DAO();
			User user= new User();
			user.setUsername(username);
			user.setPassword(password);
			boolean status = dao.login(user);
			if(status) {
				int userId = dao.getUserId(user);
				String userIdString = String.valueOf(userId);
				request.setAttribute("userId", userIdString);
				List<Post> posts = dao.getListPosts(userId);
				request.setAttribute("posts", posts);			
				RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
				rd.forward(request, response);
				dao.close();	
			}else {
				request.setAttribute("loged", "username ou senha incorretos");
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}else {
			request.setAttribute("emptyCampsLogin", "campos vazios");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}

	}

}
