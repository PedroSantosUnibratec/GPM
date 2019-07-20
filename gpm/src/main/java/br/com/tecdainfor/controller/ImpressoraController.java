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

import br.com.tecdainfor.dao.ImpressoraDAO;
import br.com.tecdainfor.dao.SetorDAO;
import br.com.tecdainfor.model.Impressora;
import br.com.tecdainfor.model.Setor;

@Controller
@RequestMapping("/impressora")
public class ImpressoraController {
	
	

	@Autowired
	SetorDAO setordao;
	@Autowired
	ImpressoraDAO impressoradao;
	
	//Mapeamento das telas
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView listar(){
		return new ModelAndView("impressora/listar-impressora");
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView Cadastrar(){
		return new ModelAndView("impressora/cadastrar-impressora");
	}
		
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public ModelAndView Alterar(@PathVariable int id){
		Impressora impressora = impressoradao.consultarImpressora(id);
		return new ModelAndView("impressora/alterar-impressora", "impressora", impressora);
	}
	
	@RequestMapping(value = "/visualizar/{id}", method = RequestMethod.GET)
	public ModelAndView Visualizar(@PathVariable int id){
		Impressora impressora = impressoradao.consultarImpressora(id);
		return new ModelAndView("impressora/visualizar-impressora", "impressora", impressora);
	}
	
	//Recebimento e tratamento dos dados via HTTP.
	
	@RequestMapping(value = "/lista", method= RequestMethod.GET)
	public @ResponseBody List<Impressora> ConsultarTodos(){
		return 	this.impressoradao.listarImpressoras();
	}
	
	@RequestMapping(value = "/listasetor", method= RequestMethod.GET)
	public @ResponseBody List<Setor> ConsultarSetor(){
		return 	this.setordao.listarSetores();
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public @ResponseBody Impressora salvar(@RequestBody Impressora impressora) {
		return this.impressoradao.cadastrarImpressora(impressora);				
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public @ResponseBody Impressora editar(@RequestBody Impressora impressora){
		impressoradao.alterarImpressora(impressora);
		return impressora;
	}
	
	@RequestMapping (value = "/buscar/{nome}", method = RequestMethod.POST)
	public @ResponseBody List<Impressora> consultarImpressoraNome(@PathVariable String nome){
		return this.impressoradao.listarImpSetor(nome);
	}
	
	@RequestMapping (value = "/excluir/{id}", method = RequestMethod.POST)
	public @ResponseBody Impressora excluir(@PathVariable int id){
		return this.impressoradao.excluir(id);
	}
	
}
