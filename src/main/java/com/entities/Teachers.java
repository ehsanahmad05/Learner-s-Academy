package com.entities;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Teachers {
@Id
private String teacherId;
private String teacherName;
private String teacherSub;

private String teacherClass;

public String getTeacherId() {
	return teacherId;
}
public void setTeacherId(String teacherId) {
	this.teacherId = teacherId;
}
public String getTeacherName() {
	return teacherName;
}
public void setTeacherName(String teacherName) {
	this.teacherName = teacherName;
}
public String getTeacherSub() {
	return teacherSub;
}
public void setTeacherSub(String teacherSub) {
	this.teacherSub = teacherSub;
}

public String getTeacherClass() {
	return teacherClass;
}
public void setTeacherClass(String teacherClass) {
	this.teacherClass = teacherClass;
}
public Teachers() {
	super();
	// TODO Auto-generated constructor stub
}
public Teachers(String teacherId, String teacherName, String teacherSub, String teacherClass) {
	super();
	this.teacherId = teacherId;
	this.teacherName = teacherName;
	this.teacherSub = teacherSub;
	this.teacherClass = teacherClass;
}
@Override
public String toString() {
	return "Teachers [teacherId=" + teacherId + ", teacherName=" + teacherName + ", teacherSub=" + teacherSub
			+ ", teacherClass=" + teacherClass + "]";
}





}
