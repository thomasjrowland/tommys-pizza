package lab22.tommyspizza;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TommysPizzaController {
	
	@RequestMapping("/")
	public String mainPage() {
		return "tommyspizza";		
	}
	
	@RequestMapping("/review")
	public String reviewPage() {
		return "review";		
	}
	
	@RequestMapping("/custompizza")
	public String customPage() {
		return "custompizza";		
	}
	
	@RequestMapping("/specialtypizza")
	public String specialtyPage(
			@RequestParam(value="sp", required=false) String pizza,
			Model model) { 
		
		String pizzaType = "";
		double price = 0.0;
		
		if (pizza.equals("sp1")) {
			System.out.println("sp1");
			pizzaType = "Tommy's Supreme";
			price = 17.99;
		} else if (pizza.equals("sp2")) {
			System.out.println("sp2");
			pizzaType = "Tommy's Chili Extreme";
			price = 21.99;
		} else if (pizza.equals("sp3")) {
			System.out.println("sp3");
			pizzaType = "Tommy's Fiesta Pie";
			price = 18.99;
		} else {
			System.out.println("pizza not found");
			System.out.println(pizza);
		}
				
		model.addAttribute("pizzaType", pizzaType);
		model.addAttribute("price", price);
			
		return "specialtypizza";		
	}
	
	@RequestMapping("/confirmation")
	public String confirmationPage(
			@RequestParam(value="size", required=false) String size,
			@RequestParam(value="toppings", required=false) int toppings,
			@RequestParam(value="glutenfree", required=false) String glutenFree,
			@RequestParam(value="specialrequests", required=false) String specialRequests,
			Model model) {
		
		double sizePrice = 0.0;
		double toppingPrice = 0.0;
		double glutenPrice = 0.0;
		double totalPrice = 0.0;
		
		if (size.equals("sml")) {
			sizePrice = 7.0;
			toppingPrice = toppings * .5;
		} else if (size.equals("med")) {
			sizePrice = 10;
			toppingPrice = toppings * 1;
		} else if (size.equals("lrg")) {
			sizePrice = 12.0;
			toppingPrice = toppings * 1.25;
		} else {
			System.out.println("something's not right");
			System.out.println(size);
			System.out.println(toppings);
			System.out.println(glutenFree);
			System.out.println(specialRequests);
		}
		
		try {
		if (glutenFree.equals("glutenfree")) {
			glutenPrice = 2.0;
		} else {
			glutenPrice = 0.0;
		}
		} catch (Exception e) {}
		
		totalPrice = sizePrice + toppingPrice + glutenPrice;
		
		model.addAttribute("size", size);
		model.addAttribute("totalPrice", totalPrice);
		model.addAttribute("toppings", toppings);
		model.addAttribute("glutenFree", glutenFree);
		model.addAttribute("specialRequests", specialRequests);
		
		return "confirmation";		
	}

}
