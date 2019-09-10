package br.edu.insper.al;

import java.sql.Array;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DAO {
	private Connection connection;
	
	public DAO() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection  = DriverManager.getConnection(
					"jdbc:mysql://localhost/Boiei", "Arfel", "R4f43!arafle99");
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
	
	public void addPost(Post post) {
		try {
			PreparedStatement stmt;
		
			String sql = "INSERT INTO Posts" + "(user_id, text, materia, prioridade) values(?,?,?,?)";
//			Date date= new Date(0);
//			Timestamp ts = new Timestamp(date.getTime());
			stmt = connection.prepareStatement(sql);
			stmt.setInt(1, post.getUserId());
			stmt.setString(2, post.getTexto());
			stmt.setString(3, post.getMateria());
//			stmt.setTimestamp(4, ts);
			stmt.setInt(4, post.getPrioridade());
			stmt.execute() ;
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
	
	public List<Post> getListPosts(int userId, String orderBy) {
		List<Post> posts = new ArrayList<Post>();
		try {
			String sql = "SELECT * FROM Posts WHERE user_id=? ORDER BY "+ orderBy;
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setInt(1,userId);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				Post post = new Post();
				post.setId(rs.getInt("id"));
				post.setUserId(rs.getInt("user_id"));
				post.setTexto(rs.getString("text"));
//				post.setCreationDate(rs.getTimestamp("CreationTime"));
				post.setMateria(rs.getString("materia"));
				post.setPrioridade(rs.getInt("prioridade"));
				posts.add(post);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return posts;
	}
	
	public void delPost(Post post) {
		try {
			PreparedStatement stmt = connection.prepareStatement("DELETE FROM Posts WHERE id=?");
			stmt.setInt(1, post.getId());
			stmt.executeUpdate();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void editPost(Post post) {
		try {
			PreparedStatement stmt = connection.prepareStatement("UPDATE Posts SET text=? WHERE id=?");
			stmt.setString(1, post.getTexto());
			stmt.setInt(2, post.getId());
			stmt.executeUpdate();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
