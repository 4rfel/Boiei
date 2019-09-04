package br.edu.insper.al;

import java.sql.Array;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	private Connection connection;
	
	public DAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection  = DriverManager.getConnection(
					"jdbc:mysql://localhost/Boiei", "", "");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public boolean login(User user) {
		boolean status = false;
		try {
			PreparedStatement stmt;
			String sql = "SELECT * FROM Users WHERE username=? AND password=?";

			stmt = connection.prepareStatement(sql);
			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getPassword());
			ResultSet res = stmt.executeQuery();
			status = res.next();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	public int getUserId(User user) {
		int userId = 0;
		try {
			PreparedStatement stmt;
			String sql = "SELECT * FROM Users WHERE username=?";

			stmt = connection.prepareStatement(sql);
			stmt.setString(1, user.getUsername());
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				userId = rs.getInt("id");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userId;
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
	
	public boolean addUser(User user) {
		try {
			PreparedStatement stmt;
			String sql = "SELECT * FROM Users WHERE username=?";

			stmt = connection.prepareStatement(sql);
			stmt.setString(1,user.getUsername());
			ResultSet rs = stmt.executeQuery();
			if(!rs.next()) {
				sql = "INSERT INTO Users" + "(username,password) values(?,?)";

				stmt = connection.prepareStatement(sql);
				stmt.setString(1,user.getUsername());
				stmt.setString(2,user.getPassword());
				stmt.execute();
				stmt.close();
				return true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return false;
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

	public void close() {
		// TODO Auto-generated method stub
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
