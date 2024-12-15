package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public Film findFilmById(int id);
	public List<Film> findFilmsByKeyword(String keyword);
	public Film addFilm(Film film);
	boolean updateFilm(Film film);
	boolean deleteFilm(int id);
	List<Actor> findActorsByFilmId(int filmId);
}
	

