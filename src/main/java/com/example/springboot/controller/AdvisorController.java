package com.example.springboot.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.springboot.model.AddMoreDetails;
import com.example.springboot.model.Advisor;
import com.example.springboot.model.LoanRequest;
import com.example.springboot.model.loanAmount;
import com.example.springboot.service.AdvisorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdvisorController {
	
	
	@Autowired
	private AdvisorService advisorService;
	
	 @GetMapping("advisorregister")
		public ModelAndView advisorregister() {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("advisorregister");
		    return mv;
		}
	 

	 @GetMapping("advisordashboard")
		public ModelAndView advisordashboard() {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("advisordashboard");
			
			
			return mv;
		}
		
	
	@PostMapping("/insertadvisor")
	public ModelAndView insertadvisor(HttpServletRequest request)
	{
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String PhoneNumber = request.getParameter("phonenumber");
		String Password =request.getParameter("password");
		String BussinessType = request.getParameter("bussinessType");
		
		
		Advisor advisor = new Advisor();
		
		advisor.setName(Name);
		advisor.setEmail(Email);
		advisor.setPhonenumber(PhoneNumber);
		advisor.setPassword(Password);
		advisor.setBussinessType(BussinessType);
		
		advisorService.Register(advisor);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisorlogin");

		return mv;
	}
	@GetMapping("advisorlogin")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("advisorlogin");
		return mv;
	}
	
	@PostMapping("/checkadvisorlogin")
	public ModelAndView checkadvisorLogin(HttpServletRequest request) {
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    ModelAndView mv = new ModelAndView();

	    System.out.println(email + " " + password);

	    Advisor advisor = advisorService.checkLogin(email, password);

	    if (advisor == null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("error", "Check your credentials");
	        mv.setViewName("redirect:/advisorlogin"); 
	    } else if (!advisor.isVerified()) {
	        mv.addObject("msg", "Your account is not verified. Kindly contact Admin (in Contact page)");
	        mv.setViewName("ErrorPage");
	        System.out.println(advisor.toString()+"");
	    } else {
	        HttpSession session = request.getSession();
	        session.setAttribute("advisor", advisor);
	        mv.setViewName("advisordashboard");
	        System.out.println(advisor.toString());
	    }
	    return mv;
	}
	
	
	@GetMapping("viewloanrequest")
	public ModelAndView viewloanrequest() {
		ModelAndView mv = new ModelAndView("viewloanrequest");
		List<LoanRequest> loanrequestlist = advisorService.ViewLoanRequest();
        mv.addObject("loanrequestlist", loanrequestlist);
		
		return mv;
	}
	@GetMapping("verifyloan")
	public ModelAndView verifyloan(@RequestParam("id") long id) {
	    ModelAndView mv = new ModelAndView();
	    String msg = advisorService.verifyLoan(id);
	    
	    mv.addObject("msg", msg);  // Optional: pass the message to display it on the redirected page.
	    mv.setViewName("redirect:/viewloanrequest");  // Ensure this path matches the actual mapping
	    
	    return mv;
	}
	@GetMapping("deleteloan")
	public ModelAndView deleteloan(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView();
	    String msg=advisorService.deleteLoan(id);
	    
	    mv.addObject("msg",msg);
	    mv.setViewName("redirect:/viewloanrequest");
	    
	    return mv;
	}
	
	@GetMapping("/viewmoredetails")
	public ModelAndView viewUserDetails(@RequestParam(name = "UserId", required = false) String UserId) {
	    ModelAndView mv = new ModelAndView();

	    if (UserId == null) {
	        mv.setViewName("errormsg");
	        mv.addObject("message", "User ID is required to view details.");
	        return mv;
	    }

	    mv.setViewName("viewmoredetails");
	    List<AddMoreDetails> detailsList = advisorService.getDetailsByUserId(UserId);
	    mv.addObject("detailsList", detailsList);
	    return mv;
	}
	@GetMapping("/displayUserAdharImage")
	public ResponseEntity<byte[]> displayUserAdharImage(@RequestParam String userId) throws Exception {
	    List<AddMoreDetails> detailsList = advisorService.getDetailsByUserId(userId);
	    if (detailsList.isEmpty()) {
	        return ResponseEntity.notFound().build();  // Return 404 if no details found
	    }

	    AddMoreDetails details = detailsList.get(0);  // Assuming you want the first record
	    byte[] imageBytes = details.getUseradharImage().getBytes(1, (int) details.getUseradharImage().length());

	    return ResponseEntity.ok().contentType(org.springframework.http.MediaType.IMAGE_JPEG).body(imageBytes);
	}

	@GetMapping("/displayNomineeAdharImage")
	public ResponseEntity<byte[]> displayNomineeAdharImage(@RequestParam String userId) throws Exception {
	    List<AddMoreDetails> detailsList = advisorService.getDetailsByUserId(userId);
	    if (detailsList.isEmpty()) {
	        return ResponseEntity.notFound().build();  // Return 404 if no details found
	    }

	    AddMoreDetails details = detailsList.get(0);  // Assuming you want the first record
	    byte[] imageBytes = details.getNomineeAdharImage().getBytes(1, (int) details.getNomineeAdharImage().length());

	    return ResponseEntity.ok().contentType(org.springframework.http.MediaType.IMAGE_JPEG).body(imageBytes);
	}
	
	 @GetMapping("addloan")
		public ModelAndView addloan() {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("addloan");
		    return mv;
		}

	@PostMapping("/insertloan")
	public ModelAndView insertloan(HttpServletRequest request)
	{
		String UserId = request.getParameter("userId");
		String sanctionAmount = request.getParameter(" sanctionAmount");
		String loanTerm = request.getParameter("loanTerm");
		String monthlyPayment =request.getParameter("monthlyPayment");
		String annualInterest = request.getParameter("annualInterest");
        Date sanctionDate = new Date();
		
		loanAmount amount = new loanAmount();
		
	      amount.setUserId(UserId);
	      amount.setSanctionedAmount(sanctionAmount);
	      amount.setLoanTerm(loanTerm);
	      amount.setMonthlyPayment(monthlyPayment);
	      amount.setAnnualInterest(annualInterest);
	      amount.setSanctionDate(sanctionDate);
		
		advisorService.loanamount(amount);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addloan");

		return mv;
	}
	 

	
}