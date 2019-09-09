package br.edu.insper.al;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Order
 */
@WebServlet("/Order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Order() {
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
		DAO dao = new DAO();
		Post post = new Post();
		
		String orderBy = request.getParameter("orderBy");
		
		String userIdString = request.getParameter("userId");
		int userId = Integer.valueOf(userIdString);
		request.setAttribute("userId", userIdString);
		List<Post> posts = dao.getListPosts(userId, orderBy);
		request.setAttribute("posts", posts);	
		request.setAttribute("orderBy", orderBy);			
		
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
		dao.close();
	}

}
