package com.example.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="advisor_data")
public class Advisor {

	   @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;     
	   @Column(name="lname",nullable=false,length=50)
	    private String name;       
	   @Column(name="lemail",nullable=false,length=50,unique = true)
	    private String email; 
	   @Column(name="lphonenumber",nullable=false,length=10)
	    private String phonenumber;
	   @Column(name="lpassword",nullable=false,length=50)
	    private String password;  
	   @Column(name="lbussinessType",nullable=false,length=50)
	    private String bussinessType;
	   @Column(nullable=false)
	    private boolean verified;
	   
	   
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	public String getBussinessType() {
		return bussinessType;
	}
	public void setBussinessType(String bussinessType) {
		this.bussinessType = bussinessType;
	}
	public boolean isVerified() {
		return verified;
	}
	public void setVerified(boolean verified) {
		this.verified = verified;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}   
	    
	   
}
