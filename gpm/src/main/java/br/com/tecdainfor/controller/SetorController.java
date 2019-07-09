package br.com.tecdainfor.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import br.com.tecdainfor.dao.SetorDAO;
import br.com.tecdainfor.model.Setor;

@Controller
@RequestMapping("/setor")
public class SetorController {
	
	
	@Autowired
	SetorDAO setordao;
	
	//Mapeamento das telas
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView listar() {

		return new ModelAndView("setor/listar-setores");
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView cadastrar() {
		return new ModelAndView("cadastrar-setor");
	}
	
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public ModelAndView alterar(@PathVariable int id) {
		Setor setor = setordao.consultarSetor(id);
		return new ModelAndView("setor/alterar-setor", "setor", setor);

}
	
	@RequestMapping(value = "/visualizar/{id}", method = RequestMethod.GET)
	public ModelAndView visualizar(@PathVariable int id) {
		Setor setor = setordao.consultarSetor(id);
		return new ModelAndView("setor/vizualuzar-setor", "setor", setor);

		
	}
	
	//Recebimento e tratamento dos dados via HTTP.
	
	@RequestMapping(value = "/listar", method= RequestMethod.GET)
	public @ResponseBody List<Setor> ConsultarTodos(){
		return 	this.setordao.listarSetores();
	}
}