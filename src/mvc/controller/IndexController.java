package mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.model.DAO;
import mvc.model.User;

@Controller
public class IndexController {

	@RequestMapping("loginController")
	public String login(User user, HttpSession session) {
		session.setAttribute("emptyCampsLogin", null);
		session.setAttribute("loged", null);
		System.out.println("LOGIN");
		DAO dao = new DAO();
		boolean login = dao.login(user);
		if (login && user.isUserValidLogin()) {
			String orderBy = "id";
			user.setId(dao.getUserId(user));
			session.setAttribute("user", user);
			session.setAttribute("orderBy", orderBy);
			session.setAttribute("posts", dao.getListPosts(user, orderBy));
			return "main";
		}
		if(!user.isUserValidLogin()) {
			session.setAttribute("emptyCampsLogin", "Campos Vazios");	
		}else {
			session.setAttribute("loged", "Usename ou senha incorretos");		
		}
		return "index";
	}

	@RequestMapping("addUserController")
	public String addUser(User user, HttpSession session) {
		session.setAttribute("samePassword", null);
		session.setAttribute("ValidUsername", null);
		session.setAttribute("emptyCamps", null);
		System.out.println("AddUser");
		DAO dao = new DAO();
		if (user.isUserValidAdd() && dao.addUser(user)) {
			String orderBy = "id";
			user.setId(dao.getUserId(user));
			session.setAttribute("user", user);
			session.setAttribute("orderBy", orderBy);
			session.setAttribute("posts", dao.getListPosts(user, orderBy));
			return "main";
		}
		if(!user.isUserValidAdd()) {
			
			session.setAttribute("samePassword", "senhas diferentes");
			session.setAttribute("emptyCamps", "Campos Vazios");
		}else if(!dao.addUser(user)) {
			session.setAttribute("ValidUsername", "Username ja utilizado");
		}

		return "index";
	}
}
