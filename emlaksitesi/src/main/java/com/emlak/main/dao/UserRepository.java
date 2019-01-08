package com.emlak.main.dao;

import java.util.List;

import com.emlak.main.model.User;

public interface UserRepository {
	List<User> findAll();
	User findUserId(Long id);
	List<User> findCityId(Long city_id);
	void create(User user);
	void update(User user);
	void delete(Long id);
	void updateCityId(Long city_id);
}
