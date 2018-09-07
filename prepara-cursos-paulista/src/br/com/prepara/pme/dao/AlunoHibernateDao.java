package br.com.prepara.pme.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.prepara.pme.model.Aluno;

public class AlunoHibernateDao {
	private static final String PERSISTENCE_UNIT = "prepara";

	public void inserir(Aluno aluno) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(aluno);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
	
	
    public List<Aluno> listar() {

	List<Aluno> lista = null;

	EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
	EntityManager manager = factory.createEntityManager();
	lista = manager.createQuery("SELECT p FROM pme p ORDER BY p.nome").getResultList();
	manager.close();
	factory.close();

	return lista;
    }
    
    public void alterar(Aluno aluno) {

    	EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
    	EntityManager manager = factory.createEntityManager();

    	manager.getTransaction().begin();
    	manager.merge(aluno);
    	manager.getTransaction().commit();

    	manager.close();
    	factory.close();
        }

        public void remover(int id) {

    	EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
    	EntityManager manager = factory.createEntityManager();
    	Aluno aluno = manager.find(Aluno.class, id);

    	manager.getTransaction().begin();
    	manager.remove(aluno);
    	manager.getTransaction().commit();

    	manager.close();
    	factory.close();
        }
        

        public Aluno buscarPorId(int id) {

    	Aluno obj = null;

    	EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
    	EntityManager manager = factory.createEntityManager();
    	obj = manager.find(Aluno.class, id);
    	manager.close();
    	factory.close();

    	return obj;
        }
    
}