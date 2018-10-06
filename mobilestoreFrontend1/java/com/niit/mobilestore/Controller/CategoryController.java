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

import com.niit.mobilestore.Dao.CategoryDao;
import com.niit.mobilestore.Dao.ProductDao;
import com.niit.mobilestore.Model.Category;
import com.niit.mobilestore.Model.Product;



@Controller
public class CategoryController {

	
	@Autowired
	Category category;
	@Autowired
	CategoryDao categoryDao;
	
	@Autowired
	Product product;
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/Category")
	public ModelAndView categoryform()
	{
		List<Category> categories=categoryDao.list();
		ModelAndView obj=new ModelAndView("Category");
		obj.addObject("category", new Category());
		obj.addObject("categories", categories);
		return obj;
	}
	
	@RequestMapping(value="/addcat",method=RequestMethod.POST)
	public ModelAndView addcategory(@ModelAttribute("category")Category category)
	{
		ModelAndView obj= new ModelAndView();
//		categoryDao.saveorupdate(category);
//		obj.addObject("echo", "Category is addes successfully");
		if(categoryDao.saveorupdate(category)==true)
		{
			obj.addObject("echo", "Category is added successfully");
			
		}
		else
		{
			obj.addObject("msg","Sorry! Category is not added");
		}
		obj.setViewName("redirect:/Category");
		return obj;
	}


@RequestMapping("/editcategory/{CatId}")
public ModelAndView editcategory(@PathVariable("CatId")String CatId)
{
	System.out.println(123);
	category=categoryDao.getCategory(CatId);
	List<Category> categories=categoryDao.list();
	ModelAndView obj=new ModelAndView("Category");
	obj.addObject("category",category);
	obj.addObject("categories", categories);
	
	return obj;
	}
@RequestMapping("/deletecategory/{CatId}")
public ModelAndView deletecategory(@PathVariable("CatId")String CatId)
{
	ModelAndView obj=new ModelAndView("redirect:/Category");
	category=categoryDao.getCategory(CatId);
//	subCategory=subCategoryDao.getSubCatId(subCatId);
//	Category sublist=categoryDao.getCategory(CatId);
//	List<Product> lists= productDao.getProductBySubCategory(subCategory);
	List<Product> lists=productDao.getProductByCategory(CatId);
	if(lists==null)
	{
		categoryDao.delete(category);
		obj.addObject("msg","category is deleted successfully");
	}
	else
	{			
	
			for(Product prodlist:lists)
			{
			productDao.delete(prodlist);
			}
			categoryDao.delete(category);
		}
//		categoryDao.delete(category);
		obj.addObject("msg","Category and SubCategory is deleted successfully");
//		obj.addObject("msg", "Category not deleted");
//	}
	return obj;
	
    }
	
}

