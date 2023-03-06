package com.dto;

import java.util.Arrays;

public class MemberBean {
	private int id; //1
	private String name ="Yiruma"; //"Hyojin Kim"
	private String[] hobby = new String[3];
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String[] getHobby() {
		return hobby;
	}
	public void setHobby(String[] hobby) {
		this.hobby = hobby;
	}
	
	
	
}
