package br.com.tecdainfor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

// Classe Monitor

@Entity
@Table(name = "TB_MONITOR")
public class Monitor {
	
	// Atributos da classe monitor

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_monitor_pk", nullable = false)
	private int id;
	@Column(name = "st_montomb")
	private String montomb;
	@Column(name = "st_modelo")
	private String modelo;
	@Column(name = "st_descricao")
	private String descricao;
	
	//Gets and Sets da classe monitor
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getMontomb() {
		return montomb;
	}
	public void setMontomb(String montomb) {
		this.montomb = montomb;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
}
