package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {
	
	@Autowired
	private FilmDAO filmDAO;

	@RequestMapping(path = {"/", "home.do"})
	public String goHome(Model model) {
	//	return "WEB-INF/home.jsp";
		return"home";
	}
	
	@RequestMapping(path = {"newfilm.do"})
	public String goNewFilm(Model model) {
	//	return "WEB-INF/home.jsp";
		return"newfilm";
	}
	
	@RequestMapping(path = {"idsearch.do"})
	public String goResult(Model model, @RequestParam("id") int id) {
		Film film = filmDAO.findFilmById(id);
		model.addAttribute("film", film);
	//	return "WEB-INF/home.jsp";
		return"result";
	}
	
	@RequestMapping(path = {"keywordsearch.do"})
	public String goKeywordResult(Model model, @RequestParam("keyword") String keyword) {
		List<Film> film = filmDAO.findFilmsByKeyword(keyword);
		model.addAttribute("film", film);
	//	return "WEB-INF/home.jsp";
		return"result";
	}
}
