package com.mmrkd.bean;

import java.io.Serializable;

public class Emp implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String eno;
	private String epassword;
	private int eage;
	private String email;
	private double esalary;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEno() {
		return eno;
	}
	public void setEno(String eno) {
		this.eno = eno;
	}
	public String getEpassword() {
		return epassword;
	}
	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}
	public int getEage() {
		return eage;
	}
	public void setEage(int eage) {
		this.eage = eage;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public double getEsalary() {
		return esalary;
	}
	public void setEsalary(double esalary) {
		this.esalary = esalary;
	}
	public Emp(int id, String eno, String epassword, int eage, String email, double esalary) {
		super();
		this.id = id;
		this.eno = eno;
		this.epassword = epassword;
		this.eage = eage;
		this.email = email;
		this.esalary = esalary;
	}
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Emp [id=" + id + ", eno=" + eno + ", epassword=" + epassword + ", eage=" + eage + ", email=" + email
				+ ", esalary=" + esalary + "]";
	}
	
}
