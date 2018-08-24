package co.grandcircus.coffeeshop.coffeeshop;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository
@Transactional
public class ItemDaoHibernate {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<Items> findAll() {
		return em.createQuery("FROM Items", Items.class).getResultList();		
	}
	
	public void deleteItems(Long id) {
		Items items = em.getReference(Items.class, id);
		em.remove(items);
		
	}

	public void createItem(Items items) {
		em.persist(items);
	}
	
	public Items findById(Long id) {
		return em.find(Items.class, id);
	}
//	public void editItems(Long id) {
//		Items items = em.getReference(Items.class, id);
//		em.merge(items);
//	}
	
	public void editItems(Items items) {
		em.merge(items);
	}
}
