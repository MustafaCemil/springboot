package com.emlak.main.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.emlak.main.dao.UserRepository;
import com.emlak.main.model.User;

@Repository("userRepository")
public class UserRepositoryImpl implements UserRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	
	@Override
	public List<User> findAll() {
		return entityManager.createQuery("from User",User.class).getResultList();
	}

	@Override
	public User findUserId(Long id) {
		return entityManager.find(User.class, id);
	}

	@Override
	public List<User> findCityId(Long city_id) {
		return entityManager.createQuery("from User where city.id= :city_id",User.class).setParameter("city_id", city_id).getResultList();
	}

	@Override
	public void create(User user) {
		entityManager.persist(user);
	}

	@Override
	public void update(User user) {
		entityManager.merge(user);
	}

	@Override
	public void delete(Long id) {
		entityManager.remove(entityManager.getReference(User.class, id));
	}

	@Override
	public void updateCityId(Long city_id) {
		entityManager.createQuery("update User set city.id=null where city.id= :city_id")
		.setParameter("city_id",city_id).executeUpdate();
	}

}
