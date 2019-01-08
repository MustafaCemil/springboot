package com.emlak.main.dao;

import java.util.List;

import com.emlak.main.model.City;

public interface CityRepository {
		List<City> findAll();
		City findCityId(Long id);
		void create(City city);
		void update(City city);
		void delete(Long id);
}
