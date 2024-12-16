package com.skilldistillery.film.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDAO;

	// Home Page
	@GetMapping(path = { "/", "home.do" })
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
		System.out.println("Films retrieved: " + films);
		
		if (films.isEmpty()) {
			model.addAttribute("message", "film not found for keyword search: " + keyword);
		} else {
			model.addAttribute("films", films);
			model.addAttribute("message", "film found for keyword search: " + keyword);
		}

		// return "WEB-INF/home.jsp";
		return "keyword";
	}

	@RequestMapping(path = "addfilm.do", method = RequestMethod.POST)
	public ModelAndView addFilm(Film film) {
		ModelAndView mv = new ModelAndView();
		
		if (film.getId() != 0) {
			mv.addObject("AddedFilm");
		} else {
			mv.addObject("Error adding new film");
		}
		mv.setViewName("result.jsp");
		
		return mv;
	}
	

	@PostMapping("/editFilm.do")
	public String updatedFilm(Film film, Model model) {
		Film updatedFilm = filmDAO.updateFilm(film);
		
		if (updatedFilm != null) {
			model.addAttribute("message", "Film updated successfully");
			model.addAttribute("film", updatedFilm);
		} else {
			model.addAttribute("message", "Film not updated");
		}
		
		return "updateFilm";
		
	}
	
	
	@PostMapping("/deleteFilm.do")
	public String deleteFilm(@RequestParam("id") Integer id, Model model) {
		try {
			if (id == null || id <= 0) {
				model.addAttribute("message", "Invalid Film ID. Enter Valid Film ID");
				return "deleteFilm";
			}
		
		
		boolean deleted = filmDAO.deleteFilmById(id);
		if (deleted) {
			model.addAttribute("message", "film deleted successfully");
		} else {
			model.addAttribute("message", "film could not be deleted");
		}
	} catch (Exception e) {
		model.addAttribute("message", "Error occured attempting to delete film");
		e.printStackTrace();
	}
		return "deleteFilm";
	}
}
