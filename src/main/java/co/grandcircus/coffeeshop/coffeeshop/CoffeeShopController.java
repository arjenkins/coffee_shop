package co.grandcircus.coffeeshop.coffeeshop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CoffeeShopController {
	
	@RequestMapping("/")
	public ModelAndView showHomePage() {
	ModelAndView mav = new ModelAndView("index");
	return mav;
	}


	@RequestMapping("/coffeeshop-form")
	public ModelAndView showForm() {
	ModelAndView mav = new ModelAndView("coffeeshopForm");
	return mav;
	}
	

	@RequestMapping("/coffeeshop-summary")
	public ModelAndView showSummary(@RequestParam("name")String name) {
	ModelAndView mav = new ModelAndView("summary");
	mav.addObject("name", name);
	return mav;
	}
	
}
