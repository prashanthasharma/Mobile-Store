package com.niit.mobilestore.Controller;

import java.util.List;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.mobilestore.Dao.UserDao;
import com.niit.mobilestore.Model.Cart;
import com.niit.mobilestore.Model.User;


@Controller
public class UserController {

	@Autowired
	User user;
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/user")
	public ModelAndView userform()
	{
		List<User> users=userDao.list();
		ModelAndView obj=new ModelAndView("User");
		obj.addObject("user", new User());
		obj.addObject("users", users);
		return obj;
	}
	
	@RequestMapping(value="/adduser",method=RequestMethod.POST)
	public ModelAndView adduser(@ModelAttribute("user")User user)
	{
		ModelAndView obj= new ModelAndView();
		Cart c= new Cart();
		user.setCart(c);
//		categoryDao.saveorupdate(category);
//		obj.addObject("echo", "Category is added successfully");
		if(userDao.saveorupdate(user)==true)
		{
			obj.addObject("echo", "User is added successfully");
			
		}
		else
		{
			obj.addObject("msg","Sorry! User is not added");
		}
	    obj.setViewName("redirect:/user");
		return obj;
	}
	
	@RequestMapping("/User")
	public ModelAndView userform1()
	{
		List<User> users=userDao.list();
		ModelAndView obj=new ModelAndView("User");
		obj.addObject("user", new User());
		obj.addObject("users", users);
		return obj;
	}
	

}
