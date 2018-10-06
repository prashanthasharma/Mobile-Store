package com.niit.mobilestore.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mobilestore.Dao.CartItemsDao;
import com.niit.mobilestore.Dao.ProductDao;
import com.niit.mobilestore.Dao.UserDao;
import com.niit.mobilestore.Model.Cart;
import com.niit.mobilestore.Model.CartItems;
import com.niit.mobilestore.Model.Product;
import com.niit.mobilestore.Model.User;

@Controller
public class GalleryController {
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	@Autowired
	User user;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	CartItems cartItems;
	
	@Autowired
	CartItemsDao cartItemsDao;
	
	
	
	@RequestMapping("/Gallery")

	public String categoryform(HttpSession session, Model model)
	{
	Authentication authentication=SecurityContextHolder.getContext().getAuthentication();
	if(!(authentication instanceof AnonymousAuthenticationToken))
	{

		String currusername=authentication.getName();
		User u=userDao.getEmail(currusername);
		Cart cart= u.getCart();
		List<CartItems> cartItem=cartItemsDao.getlist(u.getCart().getCartId());
		if(cartItem==null||cartItem.isEmpty())
		{
		session.setAttribute("items",0);
		model.addAttribute("gtotal",0.0);
		model.addAttribute("msg","no items is added to cart");
		List<Product> products=productDao.list();
		model.addAttribute("products", products);
		return "Gallery";
	}
	model.addAttribute("cartItems",cartItem);
	model.addAttribute("gtotal",cart.getGrandTotal());
	session.setAttribute("items",cart.getTotalPrice());
	session.setAttribute("cartId", cart.getCartId());
	List<Product> products=productDao.list();
	model.addAttribute("products", products);
	return "Gallery";
	}
	List<Product> products=productDao.list();
	model.addAttribute("products", products);
	return "Gallery";
	
	}
}
