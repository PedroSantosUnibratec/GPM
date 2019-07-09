package br.com.tecdainfor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.tecdainfor.dao.MonitorDAO;
import br.com.tecdainfor.model.Monitor;


@Controller
@RequestMapping("/monitor")
public class MonitorController {

	@Autowired
	MonitorDAO monitordao;
	

	//Mapeamento das telas
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView listar(){
		return new ModelAndView("monitor/listar-monitor");
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView Cadastrar(){
		return new ModelAndView("monitor/cadastrar-monitor");
	}
		
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public ModelAndView Alterar(@PathVariable int id){
		Monitor monitor = monitordao.consultarMonitorCodigo(id);
		return new ModelAndView("monitor/alterar-monitor", "monitor", monitor);
	}
	
	@RequestMapping(value = "/visualizar/{id}", method = RequestMethod.GET)
	public ModelAndView Visualizar(@PathVariable int id){
		Monitor monitor  = monitordao.consultarMonitorCodigo(id);
		return new ModelAndView("monitor/visualizar-monitor", "monitor", monitor);
	}
	
	//Recebimento e tratamento dos dados via HTTP.
	
	@RequestMapping(value = "/lista", method= RequestMethod.GET)
	public @ResponseBody List<Monitor> ConsultarTodos(){
		return 	this.monitordao.listarMonitores();
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public @ResponseBody Monitor salvar(@RequestBody Monitor monitor) {
		return this.monitordao.cadastrarMonitor(monitor);				
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public @ResponseBody Monitor editar(@RequestBody Monitor monitor){
		monitordao.alterarMonitor(monitor);
		return monitor;
	}
	
	@RequestMapping (value = "/buscar/{nome}", method = RequestMethod.POST)
	public @ResponseBody List<Monitor> consultarMonitorTomb(@PathVariable String nome){
		return this.monitordao.consultarMonitorTomb(nome);
	}
	
	@RequestMapping (value = "/excluir/{id}", method = RequestMethod.POST)
	public @ResponseBody Monitor excluir(@PathVariable int id){
		return this.monitordao.excluir(id);
	}

	
}
