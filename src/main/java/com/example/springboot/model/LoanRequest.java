package com.example.springboot.model;


import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="loanrequest_data")
public class LoanRequest {

	  @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long id;
	 @Column(name="userid",nullable=false,length=10)
	 public String userId;
	@Column(name="name",nullable=false,length=20)
	public String Name;
	@Column(name="amount",nullable=false,length=20)
	private double LoanAmount; 
	@Column(name="purpose",nullable=false,length=20)
    private String Purpose; 
	@Column(name="longterm",nullable=false,length=20)
    private int LoanTerm; 
	@Column(name="annualinterest",nullable=false,length=20)
    private double AnnualInterest; 
	@Column(name="requestdate",nullable=false,length=20)
    private Date RequestDate;
    @Column(name="annulaincome",nullable=false,length=20)
    private double AnnualIncome; 
   
    @Column(nullable=false)
    private boolean Status;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	
	public String getPurpose() {
		return Purpose;
	}
	public void setPurpose(String purpose) {
		Purpose = purpose;
	}
	
	public double getAnnualInterest() {
		return AnnualInterest;
	}
	public void setAnnualInterest(double annualInterest) {
		AnnualInterest = annualInterest;
	}
	public Date getRequestDate() {
		return RequestDate;
	}
	public void setRequestDate(Date requestDate) {
		RequestDate = requestDate;
	}
	public double getAnnualIncome() {
		return AnnualIncome;
	}
	public void setAnnualIncome(double annualIncome) {
		AnnualIncome = annualIncome;
	}
	
	public double getLoanAmount() {
		return LoanAmount;
	}
	public void setLoanAmount(double loanAmount) {
		LoanAmount = loanAmount;
	}
	public int getLoanTerm() {
		return LoanTerm;
	}
	public void setLoanTerm(int loanTerm) {
		LoanTerm = loanTerm;
	}
	public boolean isStatus() {
		return Status;
	}
	public void setStatus(boolean status) {
		Status = status;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	
}
