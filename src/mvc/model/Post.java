package mvc.model;

import java.sql.Timestamp;

public class Post {
	private int postId;
	private int userId;
	private String duvida;
	private Timestamp creationDate;
	private String materia;
	private int prioridade;
	
	public int getPostId() {return this.postId;}
	public void setPostId(int postId) {this.postId = postId;}

	public int getUserId() {return this.userId;}
	public void setUserId(int userId) {this.userId = userId;}

	public String getDuvida() {return this.duvida;}
	public void setDuvida(String duvida) {this.duvida = duvida;}

	public Timestamp getCreationDate() {return this.creationDate;}
	public void setCreationDate(Timestamp date) {this.creationDate = date;}
	
	public String getMateria() {return this.materia;}
	public void setMateria(String materia) {this.materia = materia;}

	public int getPrioridade() {return this.prioridade;}
	public void setPrioridade(int prioridade) {this.prioridade = prioridade;}
}
