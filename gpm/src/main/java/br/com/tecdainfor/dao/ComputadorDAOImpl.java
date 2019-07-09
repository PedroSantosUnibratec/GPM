package br.com.tecdainfor.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;

import org.springframework.stereotype.Repository;

import br.com.tecdainfor.model.Computador;

@Repository
public class ComputadorDAOImpl implements ComputadorDAO{

	
	@PersistenceContext(type = PersistenceContextType.EXTENDED)
	private EntityManager manager;
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ComputadorDAO#cadastrarComputador(br.com.tecdainfor.model.Computador)
	 */
	@Override
	@javax.transaction.Transactional
	public Computador cadastrarComputador(Computador computador){
		return manager.merge(computador);
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ComputadorDAO#alterarComputador(br.com.tecdainfor.model.Computador)
	 */
	@Override
	@javax.transaction.Transactional
	public Computador alterarComputador(Computador computador){
		return manager.merge(computador);
				
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ComputadorDAO#consultarComputador(int)
	 */
	@Override
	@javax.transaction.Transactional
	public Computador consultarComputador(int id){
		return manager.find(Computador.class, id);
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ComputadorDAO#listaCompSetor(java.lang.String)
	 */
	@Override
	@SuppressWarnings("unchecked")
	@javax.transaction.Transactional
	public List<Computador> listaCompSetor(String setor){
		List<Computador> computador =  manager.createQuery(" SELECT u FROM Computador u WHERE u.setor LIKE '" + setor + "%'").getResultList();		
		return computador;
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ComputadorDAO#excluir(int)
	 */
	@Override
	@javax.transaction.Transactional
	public Computador excluir(int id) {
		// TODO Auto-generated method stub
		Computador computador = this.consultarComputador(id);
		manager.remove(computador);
		return computador;
		//porque esse metodo retorna um monitor?
	}
	
	/* (non-Javadoc)
	 * @see br.com.tecdainfor.dao.ComputadorDAO#listarComputadores()
	 */
	@Override
	@javax.transaction.Transactional
	public List<Computador> listarComputadores(){
		return manager.createQuery("SELECT u FROM Computador u ORDER BY u.setor", Computador.class).getResultList();
	}
	
	
	
}
