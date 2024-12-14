package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Film;

	public class FilmDAOImpl implements FilmDAO {

		@Override
		public Film findFilmById(int id) {
			String sql = "SELECT * FROM film WHERE id = ?";
			return null;
		}

		@Override
		public List<Film> findFilmsByKeyword(String keyword) {
			String sql = "SELECT film.id, title, description, release_year, language.name AS language_name, "
					+ "language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features "
					+ "FROM film " + "JOIN language ON film.language_id = language.id "
					+ "WHERE title LIKE ? OR description LIKE ?";
			return null;
		}

		@Override
		public boolean addFilm(Film film) {
			String sql = "INSERT INTO film (title, description, length, rating) VALUES (?, ?, ?, ?)";
			return false;
		}

		@Override
		public boolean updateFilm(Film film) {
			String sql = "UPDATE film SET id = ?, title = ?, description = ?, length = ?, rating = ?";
			return false;
		}

		@Override
		public boolean deleteFilm(int id) {
			String sql = "DELETE FROM film WHERE id = ?";
			return false;
		}
		

		
		
		
		
		
		
		
		
//		String sql = "INSERT INTO film (title, description, release_year, language_id, rental_rate, length, replacement_cost, rating) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
//
//		try (Connection conn = DriverManager.getConnection(URL, user, pass);
//				PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
//
//			stmt.setString(1, FilmDAO.getTitle());
//			stmt.setString(2, FilmDAO.getDescription());
//			stmt.setInt(3, FilmDAO.getReleaseYear());
//			stmt.setInt(4, FilmDAO.getLanguageId()); 
//			stmt.setDouble(5, FilmDAO.getRentalRate());
//			stmt.setInt(6, FilmDAO.getLength());
//			stmt.setDouble(7, FilmDAO.getReplacementCost());
//			stmt.setString(8, FilmDAO.getRating());
//
//			int newRows = stmt.executeUpdate();
//			if (newRows > 0) {
//				
//				ResultSet keys = stmt.getGeneratedKeys();
//				if (keys.next()) {
//					FilmDAO.setId(keys.getInt(1));
//				}
//			}
//		} catch (SQLException sqle) {
//			sqle.printStackTrace();
//			return null;
//		}
//		return film;
//	}
//
	}
