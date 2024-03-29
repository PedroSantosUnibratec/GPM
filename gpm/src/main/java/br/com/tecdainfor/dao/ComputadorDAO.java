package br.com.tecdainfor.dao;

import java.util.List;

import br.com.tecdainfor.model.Computador;
import br.com.tecdainfor.model.Setor;

public interface ComputadorDAO {

	Computador cadastrarComputador(Computador computador);

	Computador alterarComputador(Computador computador);

	Computador consultarComputador(int id);

	List<Computador> listaCompSetor(String setor);

	Computador excluir(int id);

	List<Computador> listarComputadores();

	List<Setor> listaSetor();

}