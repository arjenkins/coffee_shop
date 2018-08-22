package co.grandcircus.coffeeshop.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void createUser(User user) {
		System.out.println("Create: " + user);
		String sql = "INSERT INTO User (firstname, lastname, email, password, phonenumber ) VALUES (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, user.getFirstname(), user.getLastname(), user.getEmail(), user.getPassword(), user.getPhonenumber());
	}

	public List<User> findAll() {
		String sql = "SELECT * FROM USER";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
	}

	public void deleteUser(Long id) {

		String sql = "DELETE FROM USER WHERE ID = ?";
		jdbcTemplate.update(sql, id);
	}
}