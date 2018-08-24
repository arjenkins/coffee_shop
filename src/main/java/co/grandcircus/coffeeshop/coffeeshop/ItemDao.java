package co.grandcircus.coffeeshop.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;



@Repository
public class ItemDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public List<Items> findAll() {
		String sql = "SELECT * FROM Items";
		return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Items.class));
		
	}
	
	public void deleteItems(Long id) {
		String sql ="DELETE FROM Items WHERE id = ?";
		jdbcTemplate.update(sql, id);
	}

	public void createItem(Items items) {
		System.out.println("Create: " + items);
		String sql = "INSERT INTO Items (id, name, description, quantity, price) VALUES (?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, items.getId(),items.getName(), items.getDescription(),items.getQuantity(),items.getPrice());
	}
	
	public Items findById(Long id) {
		String sql = "SELECT * FROM Item WHERE id = ?"; //? means # can change
		return jdbcTemplate.queryForObject(sql, 
				new BeanPropertyRowMapper<>(Items.class), id);
		
	}
}
