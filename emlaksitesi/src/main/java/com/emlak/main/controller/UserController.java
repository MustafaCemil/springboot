package com.emlak.main.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.emlak.main.model.User;
import com.emlak.main.service.CityService;
import com.emlak.main.service.UserService;

@Controller
@RequestMapping(value="/admin")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CityService cityService;
	
	
	@RequestMapping(value="/user",method=RequestMethod.GET)
	public ModelAndView getUser() {
		ModelAndView model =  new ModelAndView();
		model.addObject("user",userService.findAll());
		model.setViewName("user");
		return model;
	}

//<----------------------------create User--------------------------------->
	
	@RequestMapping(value="user/createUser",method=RequestMethod.GET)
	public String createUser(ModelMap model) {
		model.addAttribute("city",cityService.findAll()); //model sayesinde sehirler tablosundan sehirleri cektik
		return "/createUser";
	}
	
	
	@ModelAttribute
	public User initModel() {
		return new User();
	}
	
	
	@RequestMapping(value="user/createUser",method=RequestMethod.POST)
	public String handleFormCreateUser(@ModelAttribute User user,RedirectAttributes r) {
		if(user.getAbout()!="" && user.getAdress()!="" && user.getEmail()!="" && user.getPhone()!=""
				&& user.getFirstname()!="" && user.getLastname()!="" && user.getPassword()!="" && user.getHphone()!="") {
			user.setAdmin(false);
			userService.createUser(user);
			return "redirect:/admin/user";
		} else {
			r.addFlashAttribute("err", "Fill in the Blank");
			return "redirect:/admin/user/createUser";
		}
	}
	
//<--------------------------------update user------------------------------->
	
	@RequestMapping(value="updateUser/{id}", method=RequestMethod.GET)
	public String getUpdate(@PathVariable ("id") Long id,ModelMap modelMap) {
		modelMap.addAttribute("city",cityService.findAll());
		User user = userService.findUserId(id);
		modelMap.put("user", user);
		return "updateUser";
	}
	
	
	
	@RequestMapping(value="updateUser/{id}",method=RequestMethod.POST)
	public String handleFormUpdateUser(@ModelAttribute User user) {
		userService.updateUser(user);
		return "redirect:/admin/user";
	}

	
//<-------------------------------- delete user----------------------------------->
	@RequestMapping(value="deleteUser/{id}",method=RequestMethod.GET)
	public String getDelete(@PathVariable Long id) {
		userService.findUserId(id);
		return "deleteUser";
	}
	
	@RequestMapping(value="deleteUser/{id}",method=RequestMethod.POST)
	public String handleFormDeleteUser(@PathVariable Long id) {
		userService.updateCityId(id);
		userService.deleteUser(id);
		return "redirect:/admin/user";
	}

	
//<----------------------------- profile user------------------------------------->
	
	@RequestMapping(value="/profileUser/{id}",method=RequestMethod.GET)
	public String profile(@PathVariable Long id , ModelMap model) {
		User user = userService.findUserId(id);
		model.put("user", user);
		return "profileUser";
	}
}
	
