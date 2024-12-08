package com.example.springboot.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springboot.model.AddMoreDetails;
import com.example.springboot.model.Advisor;
import com.example.springboot.model.LoanRequest;
import com.example.springboot.model.loanAmount;
import com.example.springboot.repository.AddMoreDetailsRepository;
import com.example.springboot.repository.AdvisorRepository;
import com.example.springboot.repository.LoanAmountRepository;
import com.example.springboot.repository.LoanRequestRepository;

@Service
public class AdvisorServiceImpl implements AdvisorService {

	
	@Autowired
	public AdvisorRepository AdvisorRepository;
	
	@Autowired
	public LoanAmountRepository loanamountRepository;
	
	@Autowired
	public LoanRequestRepository loanrequestRepository;
	
	@Autowired
	public AddMoreDetailsRepository addmoredetailsRepository;
	
	@Override
	public String Register(Advisor advisor) {
		
		AdvisorRepository.save(advisor);
		return "Advisor Saved Successfully";
		
	}

	@Override
	public Advisor checkLogin(String email, String password) {
		return AdvisorRepository.checkAdvisorLogin(email, password);
	}

	@Override
	public List<LoanRequest> ViewLoanRequest() {
	
		return loanrequestRepository.findAll();
	}

	@Override
	public String verifyLoan(long id) {
		  Optional<LoanRequest> optionalLoan = loanrequestRepository.findById(id);

		    if (optionalLoan.isPresent()) {
		        LoanRequest loanRequest = optionalLoan.get();
		        loanRequest.setStatus(true);
		        loanrequestRepository.save(loanRequest);
		        
		        return "Advisor verified successfully";
		    } else {
		        return "Advisor not found. Please try again.";
		    }
	}
	@Override
	public String deleteLoan(long id) {
		loanrequestRepository.deleteById(id);
		return "Advisor Deleted Successfully";
	}
	public List<AddMoreDetails> getDetailsByUserId(String userId) {
	    return addmoredetailsRepository.findByUserId(userId);
	}

	@Override
	public String loanamount(loanAmount amount) {
		loanamountRepository.save(amount);
		return "LOAN SANCTIONED SUCCESSFULLY";
	}


}
