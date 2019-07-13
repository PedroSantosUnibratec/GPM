package br.com.tecdainfo.servicos;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import br.com.tecdainfor.dao.UsuarioDAO;
import br.com.tecdainfor.model.Usuario;

@Service
public class ServicoUsuario {
	
	@Autowired
	private UsuarioDAO usuariodao;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
//	PUBLIC USUARIO ENCONTRARPOREMAIL(STRING EMAIL) {
//		RETURN USUARIODAO.FINDBYEMAIL(EMAIL);
//	}
	
	public void salvar(Usuario usuario) {
		usuario.setSenha(passwordEncoder.encode(usuario.getSenha()));
		usuariodao.cadastrarUsuario(usuario);
	}

}

