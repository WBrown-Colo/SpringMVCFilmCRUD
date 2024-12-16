package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public List<Actor> findActorsByFilmId(int filmId);
	public List<Film> findFilmsByKeyword(String keyword);
	public Film findFilmById(int id);
	public Film addFilm(Film film);
	public Film updateFilm(Film film);
	public boolean deleteFilmById(int id);
}
	

