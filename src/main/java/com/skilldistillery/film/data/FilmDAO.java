package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public Film findFilmById(int id);
	public List<Film> findFilmsByKeyword(String keyword);
	boolean addFilm(Film film);
	boolean updateFilm(Film film);
	boolean deleteFilm(int id);
}















//import com.skilldistillery.filmquery.entities.Actor;
//import com.skilldistillery.filmquery.entities.Film;
//
//public interface FilmDAO {
//
//	public interface DatabaseAccessor {
//		  public Film findFilmById(int id);
//		  public Actor findActorById(int actorId);
//		  public List<Actor> findActorsByFilmId(int filmId);
//		  public List<Film> findFilmsByKeyword(String keyword);
//		  
//		  Film createFilm(Film film);
//		  Film updateFilm(Film flim);
//		  boolean deleteFilm(Film filmToDelete);
//		  
	

