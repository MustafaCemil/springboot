package com.emlak.main.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emlak.main.dao.CityRepository;
import com.emlak.main.dao.UserRepository;
import com.emlak.main.model.City;
import com.emlak.main.service.CityService;

@Service
@Transactional
public class CityServiceImpl implements CityService {
	
	
	private CityRepository cityRepository;
	
	private UserRepository userRepository;
	
	@Autowired
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@Autowired
	public void setCityRepository(CityRepository cityRepository) {
		this.cityRepository = cityRepository;
	}

	@Override
	@Transactional
	public List<City> findAll() {
		return cityRepository.findAll();
	}

	@Override
	public City findCityId(Long id) {
		return cityRepository.findCityId(id);
	}

	@Override
	public void createCity(City city) {
		cityRepository.create(city);
	}

	@Override
	public void updateCity(City city) {
		cityRepository.update(city);
	}

	@Override
	public void deleteCity(Long id) {
		userRepository.updateCityId(id);
		cityRepository.delete(id);
	}

}
