package com.example.springboot.controller;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.springboot.model.AddMoreDetails;
import com.example.springboot.model.LoanRequest;
import com.example.springboot.model.User;
import com.example.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	 @Autowired
	 private UserService userService;
	 
	 @GetMapping("userregister")
		public ModelAndView userregister() {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("userregister");
			
			
			return mv;
		}
		
	
	@PostMapping("/insertuser")
	public ModelAndView insertleave(HttpServletRequest request)
	{
		String Name = request.getParameter("name");
		String Gender = request.getParameter("gender");
		String DateofBirth = request.getParameter("dateofbirth");
		String Email = request.getParameter("email");
		String PhoneNumber = request.getParameter("phonenumber");
		String password =request.getParameter("password");
		
		User user = new User();
		user.setName(Name);
		user.setGender(Gender);
		user.setDateofbirth(DateofBirth);
		user.setEmail(Email);
		user.setPhonenumber(PhoneNumber);
		user.setPassword(password);
		
		userService.Register(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");

		return mv;
	}
	@GetMapping("userlogin")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userlogin");
		return mv;
	}
	
	@PostMapping("/checkuserlogin")
	public ModelAndView checkUserLogin(HttpServletRequest request) {
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    ModelAndView mv = new ModelAndView();

	    System.out.println(email + " " + password);

	    User user = userService.checkLogin(email, password);

	    if (user == null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("error", "Check your credentials");
	        mv.setViewName("userlogin"); 
	    } else if (!user.isVerified()) {
	        mv.addObject("msg", "Your account is not verified. Kindly contact Admin (in Contact page)");
	        mv.setViewName("ErrorPage");
	        System.out.println(user.toString()+"");
	    } else {
	        HttpSession session = request.getSession();
	        session.setAttribute("user", user);
	        mv.setViewName("userdashboard");
	        System.out.println(user.toString());
	    }
	    return mv;
	}
	
	 
	 @GetMapping("loanrequest")
		public ModelAndView loanrequest() {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("loanrequest");
		    return mv;
	}
	  @PostMapping("/insertloanrequest")
	    public ModelAndView insertLoanRequest(HttpServletRequest request) {
	        // Retrieve loan request parameters
	        String name = request.getParameter("name");
	        String userId = request.getParameter("userid");
	        double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
	        String purpose = request.getParameter("purpose");
	        int loanTerm = Integer.parseInt(request.getParameter("loanTerm"));
	        double annualInterest = Double.parseDouble(request.getParameter("annualInterest"));
	        Date requestDate = new Date();  // Assuming current date as request date
	        double annualIncome = Double.parseDouble(request.getParameter("annualIncome"));
	        
          
	        // Create and populate LoanRequest entity
	        LoanRequest loanRequest = new LoanRequest();
	        loanRequest.setName(name);
	        loanRequest.setUserId(userId);
	        loanRequest.setLoanAmount(loanAmount);
	        loanRequest.setPurpose(purpose);
	        loanRequest.setLoanTerm(loanTerm);
	        loanRequest.setAnnualInterest(annualInterest);
	        loanRequest.setRequestDate(requestDate);
	        loanRequest.setAnnualIncome(annualIncome);
	        
	        
	        // Save loan request
	        userService.LoanRegister(loanRequest);

	        // Create ModelAndView for response
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("loanrequest"); // Update view name as per your JSP or HTML page

	        return mv;
	    }
	  
	  
	  
		 @GetMapping("returncalculator")
			public ModelAndView returncalculator() {
				ModelAndView mv=new ModelAndView();
				mv.setViewName("returncalculator");
				
				
				return mv;
			}

		 
		 @GetMapping("/loanrequestuserid")
		 public ModelAndView loanRequestByUserId(HttpServletRequest request) {
		     ModelAndView mv = new ModelAndView("loanrequestuserid");

		    
		     HttpSession httpSession = request.getSession();
		     User user = (User) httpSession.getAttribute("user");
		     String userId = Long.toString( user.getId()) ; // Make sure this is correct; if it's a reference, use getUser().getId()

		        
		         List<LoanRequest> loanRequestList = userService.findByUserId(userId);
		         for(LoanRequest loanRequest: loanRequestList) {
		        	 System.out.println(loanRequest.getId());
		         }
		         mv.addObject("loanrequestlist", loanRequestList);
		    
		     return mv;
		 }
		 
		 @PostMapping("/insertaddmoredetails")
		 public ModelAndView insertAddMoreDetails(
		         HttpServletRequest request,
		         @RequestParam("userAdharImage") MultipartFile file,
		         @RequestParam("nomineeAdharImage") MultipartFile nomineeFile) throws Exception {

		     ModelAndView mv = new ModelAndView();
		     String msg;

		     try {
		         // Retrieve loan request parameters
		         String userId = request.getParameter("userid");
		         String email = request.getParameter("email");
		         String address = request.getParameter("address");
		         String phoneNumber = request.getParameter("phoneNumber");
		         String phonePayNumber = request.getParameter("phonePayNumber");
		         String nomineeName = request.getParameter("nomineeName");
		         String nomineePhoneNumber = request.getParameter("nomineePhoneNumber");
		         String nomineeRelationship = request.getParameter("nomineeRelationship");
		         String nomineeAddress = request.getParameter("nomineeAddress");
		         String bankAccountNumber = request.getParameter("bankAccountNumber");
		         String branchName = request.getParameter("branchName");
		         String ifscCode = request.getParameter("ifscCode");

		         // Convert MultipartFile to Blob
		         Blob adharBlob = new javax.sql.rowset.serial.SerialBlob(file.getBytes());
		         Blob nomineeBlob = new javax.sql.rowset.serial.SerialBlob(nomineeFile.getBytes());

		         // Populate AddMoreDetails entity
		         AddMoreDetails details = new AddMoreDetails();
		         details.setUserId(userId);
		         details.setEmail(email);
		         details.setAddress(address);
		         details.setPhoneNumber(phoneNumber);
		         details.setPhonePayNumber(phonePayNumber);
		         details.setNomineeName(nomineeName);
		         details.setNomineePhoneNumber(nomineePhoneNumber);
		         details.setNomineeRelationship(nomineeRelationship);
		         details.setNomineeAddress(nomineeAddress);
		         details.setBankAccountNumber(bankAccountNumber);
		         details.setBranchName(branchName);
		         details.setIfscCode(ifscCode);
		         details.setUseradharImage(adharBlob);
		         details.setNomineeAdharImage(nomineeBlob);

		         // Save details via service
		         msg = userService.AddDetails(details);
		         System.out.println(msg);
		         mv.setViewName("detailsmsg");
		         mv.addObject("message", msg);
		     } catch (Exception e) {
		         msg = e.getMessage();
		         System.out.println(msg);
		         mv.setViewName("errormsg");
		         mv.addObject("message", msg);
		     }

		     return mv;
		 }
		


}
		
	
	

