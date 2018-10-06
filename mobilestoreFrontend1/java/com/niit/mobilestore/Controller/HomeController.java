package com.niit.mobilestore.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.mobilestore.Dao.ProductDao;
import com.niit.mobilestore.Model.Card;
import com.niit.mobilestore.Model.Product;

@Controller
public class HomeController {
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
		
	@Autowired
	Card card;
	
	
@RequestMapping("/")
public String home(Model model)
{
	List<Product> products=productDao.list();
	//List<Category> catlist=categoryDao.list();
	//List<SubCategory> subcatlist=subCategoryDao.list();
	//List<SubCategory> scatlist=subCategoryDao.getSubCategoryByCategory(category);
	//model.addAttribute("categories",catlist);
	//model.addAttribute("scats",scatlist);
	//model.addAttribute("subcategories",subcatlist);
	model.addAttribute("products",products);
	return "home";
}



@RequestMapping("/pay")
public String pay(Model model)
{
	model.addAttribute("card",card);
	return "payment";
}
}

