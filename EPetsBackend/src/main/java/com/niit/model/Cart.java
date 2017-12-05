package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private double grandTotal;
@OneToOne
private User customer;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public double getGrandTotal() {
	return grandTotal;
}
public void setGrandTotal(double grandTotal) {
	this.grandTotal = grandTotal;
}
public User getCustomer() {
	return customer;
}
public void setCustomer(User customer) {
	this.customer = customer;
}

}
