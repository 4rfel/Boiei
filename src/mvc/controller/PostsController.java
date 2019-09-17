package mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.model.DAO;
import mvc.model.Post;
import mvc.model.User;

@Controller
public class PostsController {
	
	@RequestMapping("/OrderController")
	public String OrderController(HttpSession session, String orderBy) {
		System.out.println("orderBy");
		System.out.println(orderBy);
		DAO dao = new DAO();
		User user = (User) session.getAttribute("user");
		
		session.setAttribute("orderBy", orderBy);
		session.setAttribute("posts", dao.getListPosts(user, orderBy));
		return "main";
	}
	
	@RequestMapping("/addPostController")
	public String addPostController(HttpSession session, Post post) {
		System.out.println("addPost");
		System.out.println(post.getUserId());
		User user = (User) session.getAttribute("user");
		post.setUserId(user.getId());
		String orderBy = (String) session.getAttribute("orderBy");

		DAO dao = new DAO();
		dao.addPost(post);
		session.setAttribute("posts", dao.getListPosts(user, orderBy));

		return "main";
	}
	
	@RequestMapping("/DelPostController")
	public String delPostController(HttpSession session, Post post) {
		System.out.println("delPost");
		System.out.println(post.getUserId());
		User user = (User) session.getAttribute("user");
		post.setUserId(user.getId());
		String orderBy = (String) session.getAttribute("orderBy");

		DAO dao = new DAO();
		dao.delPost(post);
		session.setAttribute("posts", dao.getListPosts(user, orderBy));

		return "main";
	}
	
	@RequestMapping("/EditPostController")
	public String editPostController(HttpSession session, Post post) {
		System.out.println("delPost");
		System.out.println(post.getUserId());
		User user = (User) session.getAttribute("user");
		post.setUserId(user.getId());
		String orderBy = (String) session.getAttribute("orderBy");

		DAO dao = new DAO();
		dao.editPost(post);
		session.setAttribute("posts", dao.getListPosts(user, orderBy));

		return "main";
	}
	
	@RequestMapping("/sairController")
	public String sair() {
		return "index";
	}
}
