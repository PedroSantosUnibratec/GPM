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
import br.com.tecdainfor.dao.UsuarioDAO;
import br.com.tecdainfor.model.Usuario;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
	@Autowired
	UsuarioDAO usuariodao;
	
	//Mapeamento das telas
	
	@RequestMapping(value = "/listar", method = RequestMethod.GET)
	public ModelAndView listar(){
		return new ModelAndView("usuario/listar-usuario");
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.GET)
	public ModelAndView Cadastrar(){
		return new ModelAndView("usuario/cadastrar-usuario");
	}
		
	@RequestMapping(value = "/alterar/{id}", method = RequestMethod.GET)
	public ModelAndView Alterar(@PathVariable int id){
		Usuario usuario = usuariodao.consultarUsuarioCodigo(id);
		return new ModelAndView("usuario/alterar-usuario", "usuario", usuario);
	}
	
	@RequestMapping(value = "/visualizar/{id}", method = RequestMethod.GET)
	public ModelAndView Visualizar(@PathVariable int id){
		Usuario usuario = usuariodao.consultarUsuarioCodigo(id);
		return new ModelAndView("usuario/visualizar-usuario", "usuario", usuario);
	}
	
	//Recebimento e tratamento dos dados via HTTP.
	
	@RequestMapping(value = "/lista", method= RequestMethod.GET)
	public @ResponseBody List<Usuario> ConsultarTodos(){
		return 	this.usuariodao.listarUsuarios();
	}
	
	@RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
	public @ResponseBody Usuario salvar(@RequestBody Usuario usuario) {
		return this.usuariodao.cadastrarUsuario(usuario);				
	}
	
	@RequestMapping(value = "/alterar", method = RequestMethod.POST)
	public @ResponseBody Usuario editar(@RequestBody Usuario usuario){
		usuariodao.alterarUsuario(usuario);
		return usuario;
	}
	
	@RequestMapping (value = "/buscar/{nome}", method = RequestMethod.POST)
	public @ResponseBody List<Usuario> consultarUsuarioNome(@PathVariable String nome){
		List<Usuario> usuario = usuariodao.consultarUsuarioNome(nome);
		return usuario;
	}
	
	@RequestMapping (value = "/excluir/{id}", method = RequestMethod.POST)
	public @ResponseBody Usuario excluir(@PathVariable int id){
		return this.usuariodao.excluir(id);
	}

}
