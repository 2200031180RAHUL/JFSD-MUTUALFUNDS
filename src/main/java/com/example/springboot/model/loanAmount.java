package com.example.springboot.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "loanamount_data")
public class loanAmount {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column(name="userId",nullable = false)
    private String userId;

    @Column(name="sanctionamount",nullable = false)
    private String sanctionedAmount;

    @Column(name="loanterm",nullable = false)
    private String loanTerm;  // in months

    @Column(name="monthlypayment",nullable = false)
    private String monthlyPayment;

    @Column(name="annualinterest",nullable = false)
    private String annualInterest;

    @Column(name="sanctiondate",nullable = false)
    private Date sanctionDate;
    
    

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getSanctionedAmount() {
		return sanctionedAmount;
	}

	public void setSanctionedAmount(String sanctionedAmount) {
		this.sanctionedAmount = sanctionedAmount;
	}

	public String getLoanTerm() {
		return loanTerm;
	}

	public void setLoanTerm(String loanTerm) {
		this.loanTerm = loanTerm;
	}

	public String getMonthlyPayment() {
		return monthlyPayment;
	}

	public void setMonthlyPayment(String monthlyPayment) {
		this.monthlyPayment = monthlyPayment;
	}

	public void setAnnualInterest(String annualInterest) {
		this.annualInterest = annualInterest;
	}

	public Date getSanctionDate() {
		return sanctionDate;
	}

	public void setSanctionDate(Date sanctionDate) {
		this.sanctionDate = sanctionDate;
	}

}