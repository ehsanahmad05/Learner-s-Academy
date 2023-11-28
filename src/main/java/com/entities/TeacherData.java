package com.entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class TeacherData {
	@Id
	private String teachId;
	private String teachClass;
	private String teachSubj;
	public String getTeachId() {
		return teachId;
	}
	public void setTeachId(String teachId) {
		this.teachId = teachId;
	}
	public String getTeachClass() {
		return teachClass;
	}
	public void setTeachClass(String teachClass) {
		this.teachClass = teachClass;
	}
	public String getTeachSubj() {
		return teachSubj;
	}
	public void setTeachSubj(String teachSubj) {
		this.teachSubj = teachSubj;
	}
	public TeacherData(String teachId, String teachClass, String teachSubj) {
		super();
		this.teachId = teachId;
		this.teachClass = teachClass;
		this.teachSubj = teachSubj;
	}
	public TeacherData() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "TeacherData [teachId=" + teachId + ", teachClass=" + teachClass + ", teachSubj=" + teachSubj + "]";
	}
	
	
}
