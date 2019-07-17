package br.com.tecdainfor.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name= "TB_COMPUTADOR")
public class Computador implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_computador_pk", nullable = false)	
	private int id;
	@Column(name = "st_nome")
	private String nome;
	@Column(name = "st_descricao")
	private String descricao;
	@Column(name = "st_modelo")
	private String modelo;
	@Column(name = "st_gap_tomb")
	private String gap_tomb;
	@Column(name = "st_ramal")
	private int ramal;
    @Column(name = "st_tipo")
	private String tipo;
	@Column(name = "st_ip")
	private String ip;
//	@Column(name = "st_date")
//	@DateTimeFormat(pattern = "yyyy-MM-dd")
//	private Date dataCriacao;
	
	
	
	@ManyToOne(targetEntity = Setor.class)
	 private Setor computador_setor;
	
	//Gets and Sets da classe setor
	

	public int getId() {
		return id;
	}
	public Setor getComputador_setor() {
		return computador_setor;
	}
	public void setComputador_setor(Setor computador_setor) {
		this.computador_setor = computador_setor;
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
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getGap_tomb() {
		return gap_tomb;
	}
	public void setGap_tomb(String gap_tomb) {
		this.gap_tomb = gap_tomb;
	}
	public int getRamal() {
		return ramal;
	}
	public void setRamal(int ramal) {
		this.ramal = ramal;
	}

	
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	
}
