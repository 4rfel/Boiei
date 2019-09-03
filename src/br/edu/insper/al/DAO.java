package br.edu.insper.al;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	private Connection connection = null;
	
	public DAO() {
	 try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 try {
		connection = DriverManager.getConnection(
		"jdbc:mysql://localhost/Boiei", "rafaels6", "R4f43!arafle99");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
	public List<User> getListUsers() {
		List<User> users = new ArrayList<User>();
		try {
			PreparedStatement stmt = connection.
			 prepareStatement("SELECT * FROM Users");
			ResultSet rs;
			rs = stmt.executeQuery();
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				users.add(user);
			rs.close();
			stmt.close();
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return users;
		}
	
	public List<Post> getListPosts() {
		List<Post> posts = new ArrayList<Post>();
		try {
			PreparedStatement stmt = connection.
			 prepareStatement("SELECT * FROM Posts");
			ResultSet rs;
			rs = stmt.executeQuery();
			while (rs.next()) {
				Post post = new Post();
				post.setId(rs.getInt("id"));
				post.setUserId(rs.getInt("user_id"));
				post.setTexto(rs.getString("texto"));
				post.setCreationDate(rs.getTimestamp("creation_date"));
				post.setMateria(rs.getString("materia"));
				post.setPrioridade(rs.getInt("prioridade"));
				posts.add(post);
			rs.close();
			stmt.close();
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return posts;
		}
}
