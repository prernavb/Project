package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Authorities {
	
private int id;
private String role;
private User user;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getRole() {
	return role;
}
public void setRole(String role) {
	this.role = role;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}

}
