package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDAO;

	// Home Page
	@RequestMapping(path = { "/", "home.do" })
	public String goHome(Model model) {
		// return "WEB-INF/home.jsp";
		return "home";
	}

	// Displays Form to add new Film
	@RequestMapping(path = { "newfilm.do" })
	public String goNewFilm(Model model) {
		// return "WEB-INF/home.jsp";
		return "newfilm";
	}


	// Result Page
	@RequestMapping(path = { "result.do" })
	public String goResult(Model model) {
		// return "WEB-INF/home.jsp";
		return "result";
	}


	// Passes data to JSP
	@RequestMapping(path = "findfilmbyid.do", method = RequestMethod.GET)
	public String findFilmById(@RequestParam("id") int id, Model model) {
		Film film = filmDAO.findFilmById(id);
		if (film != null) {
			model.addAttribute("film", film);
			model.addAttribute("message", "film found");
		} else {
			model.addAttribute("message", "film not found");
		}
		
		// return "WEB-INF/home.jsp";
		return "result";
	}
	
	@RequestMapping(path = "findfilmbykeyword.do", method = RequestMethod.GET)
	public String findFilmByKeyword(@RequestParam("keyword") String keyword, Model model) {
		List<Film> films = filmDAO.findFilmsByKeyword(keyword);
		if (films.isEmpty()) {
			model.addAttribute("film", films);
			model.addAttribute("message", "film found for keyword search: " + keyword);
		} else {
			model.addAttribute("message", "film not found for keyword search: " + keyword);
		}
		
		// return "WEB-INF/home.jsp";
		return "keyword";
	}
	
	@RequestMapping(path = "addfilm.do", method = RequestMethod.POST)
	public String addFilm(Film film, Model model) {
		Film filmAdded = filmDAO.addFilm(film);
		if (filmAdded != null) {
			model.addAttribute("film", filmAdded);
			model.addAttribute("message", "film added");
		} else {
			model.addAttribute("message", "film not added");
		}
		
		// return "WEB-INF/home.jsp";
		return "addnewfilm";
	}
	
}
