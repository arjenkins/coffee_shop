package co.grandcircus.coffeeshop.coffeeshop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeShopController {
	
	@Autowired
	 private UserDao userDao;
	
	@Autowired
	 private ItemDao itemDao;
	
	
	
	
	@RequestMapping("/")
	public ModelAndView showHomePage() {
	ModelAndView mav = new ModelAndView("index");
	List<Items> items = itemDao.findAll();
 	mav.addObject("items", items);
	return mav;

	
	}


	@RequestMapping("/coffeeshop-form")
	public ModelAndView showForm() {
	ModelAndView mav = new ModelAndView("coffeeshopForm");
	return mav;
	}
	

	@RequestMapping("/coffeeshop-summary")
	public ModelAndView showSummary(
			@RequestParam("firstname")String firstname,
			@RequestParam("lastname")String lastname,
			@RequestParam("password")String password,
			@RequestParam("email")String email,
			@RequestParam("phonenumber")Integer phonenumber)
	{
		ModelAndView mav = new ModelAndView("summary");
	
	
	

	
	User user = new User();
	user.setFirstname(firstname);
	user.setLastname(lastname);
	user.setEmail(email);
	user.setPassword(password);
	user.setPhonenumber(phonenumber);
	
	userDao.createUser(user);


 mav.addObject("user", user);
return mav;
	}
	
	
}
