package br.com.tecdainfor.model;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TB_Setor")
public class Setor implements Serializable {
	
	// Atributos da classe setor
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_setor_pk", nullable = false)
	private int id;
	@Column(name = "nome_setor", nullable = false)
	private String nome;
	@Column(name = "descricao_setor", nullable = false)
	private String descricao;
	
	

	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name="usuariosporsetor", joinColumns=
	{@JoinColumn(name="id_setor_pk"),
	}, inverseJoinColumns=
	  {@JoinColumn(name="id_usuario_pk")})
	private Collection<Usuario> listadeusuarios;
	
	

	
	
	
	
	//Gets and Sets da classe setor
	
	
	
	public Collection<Usuario> getListadeusuarios() {
		return listadeusuarios;
	}

	public void setListadeusuarios(Collection<Usuario> listadeusuarios) {
		this.listadeusuarios = listadeusuarios;
	}

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


