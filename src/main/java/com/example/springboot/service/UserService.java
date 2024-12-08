package com.example.springboot.service;

import java.util.List;

import com.example.springboot.model.AddMoreDetails;
import com.example.springboot.model.LoanRequest;
import com.example.springboot.model.User;

public interface UserService {

	
	public String Register(User user);
	public User checkLogin(String email, String password);
	public String LoanRegister(LoanRequest loanrequest);
    public String AddDetails(AddMoreDetails addmoredetails);
	public List<LoanRequest> findByUserId(String userId);
	
}
