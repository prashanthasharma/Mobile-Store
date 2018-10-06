package com.niit.mobilestore.Dao;

import java.util.List;

import com.niit.mobilestore.Model.User;


public interface UserDao {
	public boolean saveorupdate(User user);
	public boolean delete(User user);
	public User getUser(String UserId);
	public List<User> list();
    public User isValid(String email, String prod);
    public User getEmail(String currusername);
}
