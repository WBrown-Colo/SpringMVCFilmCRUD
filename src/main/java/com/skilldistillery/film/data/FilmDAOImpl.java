package com.skilldistillery.film.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.skilldistillery.film.entities.Film;

@Component
public class FilmDAOImpl implements FilmDAO {

	private static final String URL = "jdbc:mysql://localhost:3306/sdvid";
	private String user = "student";
	private String pass = "student";

//______________________________________________________________________________________________________________________

	@Override
	public Film findFilmById(int id) {
		Film film = null;
		String sql = "SELECT * FROM film WHERE id = ?";
		try (Connection conn = DriverManager.getConnection(URL, user, pass);
				PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

			stmt.setInt(1, id);
			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					film = populateFilmFromResultSet(rs);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return film;
	}

//______________________________________________________________________________________________________________________

	@Override
	public List<Film> findFilmsByKeyword(String keyword) {
		List<Film> films = new ArrayList<>();
		String sql = "SELECT * FROM film WHERE title LIKE ? OR description LIKE ?";

		try (Connection conn = DriverManager.getConnection(URL, user, pass);
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			keyword = "%" + keyword + "%";
			stmt.setString(1, "%" + keyword + "%");
			stmt.setString(2, "%" + keyword + "%");
			try (ResultSet rs = stmt.executeQuery()) {
				while (rs.next()) {
					films.add(populateFilmFromResultSet(rs));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return films;
	}

//______________________________________________________________________________________________________________________

	@Override
	public Film addFilm(Film film) {
		String sql = "INSERT INTO film (title, description, length, rating) VALUES (?, ?, ?, ?)";

		try (Connection conn = DriverManager.getConnection(URL, user, pass);
				PreparedStatement stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {

			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getLength());
			stmt.setString(4, film.getRating());

			int newRows = stmt.executeUpdate();
			if (newRows > 0) {

				ResultSet keys = stmt.getGeneratedKeys();
				if (keys.next()) {
					film.setId(keys.getInt(1));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return film;
	}

//______________________________________________________________________________________________________________________

	@Override
	public boolean updateFilm(Film film) {
		String sql = "UPDATE film SET id = ?, title = ?, description = ?, length = ?, rating = ?";

		try (Connection conn = DriverManager.getConnection(URL, user, pass);
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setString(1, film.getTitle());
			stmt.setString(2, film.getDescription());
			stmt.setInt(3, film.getLength());
			stmt.setString(4, film.getRating());

			int newRows = stmt.executeUpdate();
			return newRows > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

//______________________________________________________________________________________________________________________

	@Override
	public boolean deleteFilm(int id) {
		String sql = "DELETE FROM film WHERE id = ?";

		try (Connection conn = DriverManager.getConnection(URL, user, pass);
				PreparedStatement stmt = conn.prepareStatement(sql)) {

			stmt.setInt(1, id);
			int newRows = stmt.executeUpdate();
			return newRows > 0;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}

//______________________________________________________________________________________________________________________

	private Film populateFilmFromResultSet(ResultSet rs) throws SQLException {
		Film film = new Film();
		film.setId(rs.getInt("id"));
		film.setTitle(rs.getString("title"));
		film.setDescription(rs.getString("description"));
		film.setLength(rs.getInt("length"));
		film.setRating(rs.getString("raing"));
		return null;
	}
}
