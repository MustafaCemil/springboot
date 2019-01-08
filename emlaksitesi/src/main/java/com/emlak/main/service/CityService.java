package com.emlak.main.service;

import java.util.List;

import com.emlak.main.model.City;

public interface CityService {
	List<City> findAll();
	City findCityId(Long id);
	void createCity(City city);
	void updateCity(City city);
	void deleteCity(Long id);
}
