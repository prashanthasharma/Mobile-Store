package com.niit.mobilestore.Model;

import java.util.List;
import java.util.UUID;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class User {
	public User()
	{
		this.UserId="USER"+UUID.randomUUID().toString().substring(30).toUpperCase();
	}
	@Id
private String UserId;
private String Name;
private String Address;
private String PhNo;
private String EmailId;
private String Password;
private String City;
private String role="ROLE_USER";
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public String getUserId() {
	return UserId;
}
public void setUserId(String userId) {
	UserId = userId;
}
public String getName() {
	return Name;
}
public void setName(String name) {
	Name = name;
}
public String getAddress() {
	return Address;
}
public void setAddress(String address) {
	Address = address;
}
public String getPhNo() {
	return PhNo;
}
public void setPhNo(String phNo) {
	PhNo = phNo;
}
public String getEmailId() {
	return EmailId;
}
public void setEmailId(String emailId) {
	EmailId = emailId;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
@OneToOne
@JoinColumn(name="billingId")
private Billing billing;

public Billing getBilling() {
	return billing;
}
public void setBilling(Billing billing) {
	this.billing = billing;
}

@OneToMany(mappedBy="user")
private List<Shipping> shipping;
public List<Shipping> getShipping() {
	return shipping;
}
public void setshipping(List<Shipping> shipping) {
	this.shipping = shipping;
}
@OneToOne(cascade=CascadeType.ALL)
@JoinColumn(name="cartId")
private Cart cart;
public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
public void setShipping(List<Shipping> shipping) {
	this.shipping = shipping;
}
}