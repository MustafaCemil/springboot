package com.emlak.main.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emlak.main.dao.UserRepository;
import com.emlak.main.model.User;
import com.emlak.main.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	private UserRepository userRepository;



	@Autowired
	public void setUserRepository(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	
	
	@Override
	public List<User> findAll() {
		return userRepository.findAll();
	}

	@Override
	public User findUserId(Long id) {
		return userRepository.findUserId(id);
	}

	@Override
	public List<User> findCityId(Long city_id) {
		return userRepository.findCityId(city_id);
	}

	@Override
	public void createUser(User user) {
		userRepository.create(user);
	}

	@Override
	public void updateUser(User user) {
		userRepository.update(user);
	}

	@Override
	public void deleteUser(Long id) {
		userRepository.delete(id);
	}

	@Override
	public void updateCityId(Long city_id) {
		userRepository.updateCityId(city_id);
	}
	

}
