package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Admin_Detailes")
public class AdminLogin {
@Id
private String email;
private String password;

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public AdminLogin() {
	super();
	// TODO Auto-generated constructor stub
}
public AdminLogin(String email, String password) {
	super();
	this.email = email;
	this.password = password;
}
@Override
public String toString() {
	return "AdminLogin [email=" + email + ", password=" + password + "]";
}


}
