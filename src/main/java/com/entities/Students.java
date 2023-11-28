package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Students {
@Id
private String sId;
private String sName;
private String sClass;

public String getsId() {
	return sId;
}
public void setsId(String sId) {
	this.sId = sId;
}
public String getsName() {
	return sName;
}
public void setsName(String sName) {
	this.sName = sName;
}
public String getsClass() {
	return sClass;
}
public void setsClass(String sClass) {
	this.sClass = sClass;
}
public Students(String sId, String sName, String sClass) {
	super();
	this.sId = sId;
	this.sName = sName;
	this.sClass = sClass;
}
public Students() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Students [sId=" + sId + ", sName=" + sName + ", sClass=" + sClass + "]";
}

 
}