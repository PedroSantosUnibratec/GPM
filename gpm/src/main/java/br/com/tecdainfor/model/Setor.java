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
	private String nome_setor;
	
	
	
	
	//Gets and Sets da classe setor
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome_setor() {
		return nome_setor;
	}
	public void setNome_setor(String nome_setor) {
		this.nome_setor = nome_setor;
	}

}


