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

import br.com.tecdainfor.dao.ComputadorDAO;
import br.com.tecdainfor.model.Computador;
import br.com.tecdainfor.model.Usuario;

@Controller
@RequestMapping("/computador")
public class ComputadorController {
	
	
	@Autowired
	ComputadorDAO computadordao;
	
	//Mapeamento das telas
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView listar(){
		return new ModelAndView("computador/listar-computador");
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView Cadastrar(){
		return new ModelAndView("computador/cadastrar-computador");
	}
		
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public ModelAndView Alterar(@PathVariable int id){
		Computador computador = computadordao.consultarComputador(id);
		return new ModelAndView("computador/alterar-computador", "computador", computador);
	}
	
	@RequestMapping(value = "/visualizar/{id}", method = RequestMethod.GET)
	public ModelAndView Visualizar(@PathVariable int id){
		Computador computador = computadordao.consultarComputador(id);
		return new ModelAndView("computador/visualizar-computador", "computador", computador);
	}
	
	//Recebimento e tratamento dos dados via HTTP.
	
	@RequestMapping(value = "/lista", method= RequestMethod.GET)
	public @ResponseBody List<Computador> ConsultarTodos(){
		return 	this.computadordao.listarComputadores();
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public @ResponseBody Computador salvar(@RequestBody Computador computador) {
		return this.computadordao.cadastrarComputador(computador);				
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public @ResponseBody Computador editar(@RequestBody Computador computador){
		computadordao.alterarComputador(computador);
		return computador;
	}
	@RequestMapping (value = "/buscar/{setor}", method = RequestMethod.POST)
	public @ResponseBody List<Computador> listaCompSetor(@PathVariable String setor){
		List<Computador> computador = computadordao.listaCompSetor(setor);
		return computador;
	}
	@RequestMapping (value = "/excluir/{id}", method = RequestMethod.POST)
	public @ResponseBody Computador excluir(@PathVariable int id){
		return this.computadordao.excluir(id);
	}

}
