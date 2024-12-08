package com.example.springboot.service;

import java.util.List;

import com.example.springboot.model.AddMoreDetails;
import com.example.springboot.model.Advisor;
import com.example.springboot.model.LoanRequest;
import com.example.springboot.model.loanAmount;



public interface AdvisorService {

	public String Register(Advisor advisor);
	public Advisor checkLogin(String email, String password);
	public List<LoanRequest> ViewLoanRequest();
	public String verifyLoan(long id);
	public String deleteLoan(long id);
	public List<AddMoreDetails>  getDetailsByUserId(String userId);
	public String loanamount(loanAmount amount);
}
