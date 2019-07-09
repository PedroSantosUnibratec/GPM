package br.com.tecdainfor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

// Classe Usuário.

@Entity
@Table(name = "TB_USUARIO")
public class Usuario {
	
	//Atributos da classe usuário
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_usuario_pk", nullable = false)
	private int id;
	@Column(name = "st_nome")
	private String nome;
	@Column(name = "st_email", unique = true)
	private String email;
	@Column(name = "st_senha")
	private String senha;
	@Column(name = "st_telefone", unique = true)
	private String telefone;
	@Column(name = "st_perfil")
	private String perfil;
	
	//Gets e Sets da classe usuário.
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	public String getPerfil() {
		return perfil;
	}
	public void setPerfil(String perfil) {
		this.perfil = perfil;
	}	
}
