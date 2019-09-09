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
 * Servlet implementation class DelPost
 */
@WebServlet("/DelPost")
public class DelPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DelPost() {
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
		DAO dao = new DAO();
		Post post = new Post();
		
		String userIdString = request.getParameter("userId");
		String postIdString = request.getParameter("postId");
		int postId = Integer.valueOf(postIdString);
		
		int userId = Integer.valueOf(userIdString);

		
		post.setId(postId);
		dao.delPost(post);
		
		request.setAttribute("userId", userIdString);
		List<Post> posts = dao.getListPosts(userId,"id");
		request.setAttribute("posts", posts);
		request.setAttribute("orderBy", "id");
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);
		
		dao.close();
		
	}

}
