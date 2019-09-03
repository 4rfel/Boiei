package br.edu.insper.al;

import java.sql.Timestamp;

public class Post {
	private int id;
	private int userId;
	private String texto;
	private Timestamp creationDate;
	private String materia;
	private int prioridade;
	
	public int getId() {return this.id;}
	public void setId(int id) {this.id = id;}

	public int getUserId() {return this.userId;}
	public void setUserId(int userId) {this.userId = userId;}

	public String getTexto() {return this.texto;}
	public void setTexto(String texto) {this.texto = texto;}

	public Timestamp getCreationDate() {return this.creationDate;}
	public void setCreationDate(Timestamp date) {this.creationDate = date;}
	
	public String getMateria() {return this.materia;}
	public void setMateria(String materia) {this.materia = materia;}

	public int getPrioridade() {return this.prioridade;}
	public void setPrioridade(int prioridade) {this.prioridade = prioridade;}
}
