package com.emlak.main.dao.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.emlak.main.dao.CityRepository;
import com.emlak.main.model.City;

@Repository("cityRepository")
public class CityRepositoryImpl implements CityRepository {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	
	@Override
	public List<City> findAll() {
		return entityManager.createQuery("from City", City.class).getResultList();
	}

	@Override
	public City findCityId(Long id) {
		return entityManager.find(City.class, id);
	}

	@Override
	public void create(City city) {
		entityManager.persist(city);
	}

	@Override
	public void update(City city) {
		entityManager.merge(city);
	}

	@Override
	public void delete(Long id) {
		entityManager.remove(entityManager.getReference(City.class, id));
	}

}
