package com.example.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springboot.model.AddMoreDetails;
import com.example.springboot.model.LoanRequest;
import com.example.springboot.model.User;
import com.example.springboot.repository.AddMoreDetailsRepository;
import com.example.springboot.repository.LoanRequestRepository;
import com.example.springboot.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private LoanRequestRepository loanrequestRepository;
	
	@Autowired
	private AddMoreDetailsRepository addmoredetailsRepository;
	
	
	@Override
	public String Register(User user) {
		
		userRepository.save(user);
		return "User Register Successfully";
	}
	@Override
	public User checkLogin(String email, String password) {
			return userRepository.checkUserLogin(email, password);
		}
	@Override
	public String LoanRegister(LoanRequest loanrequest) {
		
		 loanrequestRepository.save(loanrequest);
		 return "Loan Requested Successfully";
	}
	
	
	@Override
	public List<LoanRequest> findByUserId(String userId) {
	    return loanrequestRepository.findByUserId(userId);
	}
	@Override
	public String AddDetails(AddMoreDetails addmoredetails) {
		
		addmoredetailsRepository.save(addmoredetails);
		return "details are added successfully";
	}
	
	
	
	

}
