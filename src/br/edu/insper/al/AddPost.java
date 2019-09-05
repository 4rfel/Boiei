package br.edu.insper.al;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddPost
 */
@WebServlet("/AddPost")
public class AddPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPost() {
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
		System.out.println(userIdString);
		int userId = Integer.valueOf(userIdString);
		String text = request.getParameter("duvida");
		String materia = request.getParameter("materia");
		String prioridadeString = request.getParameter("prioridade");
		int prioridade = Integer.valueOf(prioridadeString);
		
		post.setUserId(userId);
		post.setTexto(text);
		post.setMateria(materia);
		post.setPrioridade(prioridade);
		
		request.setAttribute("userId", userId);
		RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
		rd.forward(request, response);	
		
		dao.close();
		
	}

}
