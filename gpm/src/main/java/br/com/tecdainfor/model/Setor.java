package br.com.tecdainfor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TB_Setor")
public class Setor {
	
	// Atributos da classe setor
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_setor_pk", nullable = false)
	private int id;
	@Column(name = "nome_setor", nullable = false)
	private String nome;
	@Column(name = "descricao_setor", nullable = false)
	private String descricao;
	
	
	
	
	
	//Gets and Sets da classe setor
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	

}


