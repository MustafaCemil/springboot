package com.emlak.main.service;

import java.util.List;


import com.emlak.main.model.User;

public interface UserService {
	List<User> findAll();
	User findUserId(Long id);
	List<User> findCityId(Long city_id);
	void createUser(User user);
	void updateUser(User user);
	void deleteUser(Long id);
	void updateCityId(Long city_id);

}
