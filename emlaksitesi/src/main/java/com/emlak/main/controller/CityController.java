package com.emlak.main.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.emlak.main.model.City;
import com.emlak.main.service.CityService;

@Controller
@RequestMapping("/admin")
public class CityController {
	
	@Autowired //servis bean controller beane eklendi
	private CityService cityService;
	
	@RequestMapping(value="/city",method=RequestMethod.GET)
	public ModelAndView getCity() {
		ModelAndView model = new ModelAndView();
		model.addObject("city",cityService.findAll());
		model.setViewName("city");
		return model;
	}
	
	
//<------------------------------------create city----------------------------->	
	
	@RequestMapping(value="city/createCity",method=RequestMethod.GET)
	public String createCity() {
		return "createCity";
	}
	
	
	@ModelAttribute
	public City initModel() {
		return new City();
	}
	
	
	@RequestMapping(value="city/createCity",method=RequestMethod.POST)
	public String handleFormCreateCity(@ModelAttribute City city,RedirectAttributes redirect) {
		if(city.getCityname()!="") {
			cityService.createCity(city);
			return "redirect:/admin/city";
		} else {
			redirect.addFlashAttribute("message","Fill in the blank");
			return "redirect:/admin/city/createCity";
		}
	}
	
//<---------------------------------update City---------------------------------------->
	
	@RequestMapping(value="updateCity/{id}",method=RequestMethod.GET)
	public String getUpdateCity(@PathVariable ("id") Long id, ModelMap modelMap) {
		City city = cityService.findCityId(id);
		modelMap.put("city", city);
		return "updateCity";
	}
	
	
	@RequestMapping(value="updateCity/{id}",method=RequestMethod.POST)
	public String handleFormUpdateCity(@ModelAttribute @Valid City city,RedirectAttributes redirect) {
		if(city.getCityname()!="") {
			cityService.updateCity(city);
			return "redirect:/admin/city";
		} else {
			redirect.addFlashAttribute("message","Fill in the blank");
			return "redirect:/admin/updateCity/{id}";
		}
	}
	
//<-------------------------------------delete city----------------------------------------->
	
	@RequestMapping(value="deleteCity/{id}",method=RequestMethod.GET)
	public String getDeleteCity(@PathVariable Long id, ModelMap modelMap) {
		City city = cityService.findCityId(id);
		modelMap.put("city",city);
		return "deleteCity";
	}
	@RequestMapping(value="deleteCity/{id}",method=RequestMethod.POST)
	public String handleFormDeleteCity(@PathVariable Long id) {
		cityService.deleteCity(id);
		return "redirect:/admin/city";
	}
	
}
