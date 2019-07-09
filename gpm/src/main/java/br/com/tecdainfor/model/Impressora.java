package br.com.tecdainfor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TB_IMPRESSORA")
public class Impressora {
	
	// Atributos da classe Impressora

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_impressora_pk", nullable = false)	
	private int id;
	@Column(name = "st_descricao")
	private String descricao;
	@Column(name = "st_ip")
	private String ip;
	@Column(name = "st_ramal")
	private int ramal;
	@Column(name = "st_setor")
	private String setor;
	@Column(name = "st_num_serie")
	private String num_serie;
	@Column(name = "st_modelo")
	private String modelo;
	
	
	
	// Geters e Seters da classa Impressora
	
	
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
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public int getRamal() {
		return ramal;
	}
	public void setRamal(int ramal) {
		this.ramal = ramal;
	}
	public String getSetor() {
		return setor;
	}
	public void setSetor(String setor) {
		this.setor = setor;
	}
	public String getNum_serie() {
		return num_serie;
	}
	public void setNum_serie(String num_serie) {
		this.num_serie = num_serie;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

}
