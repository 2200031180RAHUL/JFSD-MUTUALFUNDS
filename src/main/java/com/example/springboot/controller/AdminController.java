package com.example.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.springboot.model.Admin;
import com.example.springboot.model.Advisor;
import com.example.springboot.model.User;


import com.example.springboot.service.AdminService;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	public AdminService adminService;
	
	
	@GetMapping("/")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	@GetMapping("adminlogin")
	public   ModelAndView adminlogin() 
	{
			 ModelAndView mv = new ModelAndView();
			mv.setViewName("adminlogin");
			 return mv;
	}
	@PostMapping("checkadminlogin")
	//@ResponseBody
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
			ModelAndView mv = new ModelAndView();
			
			String auname = request.getParameter("auname");
			String apwd = request.getParameter("apwd");
			
			Admin admin = adminService.checkadminlogin(auname, apwd);
			if(admin!=null)
			{
				//return "Admin Login Success";
				mv.setViewName("adminhome");
			}		
			else
			{
				//return admin login fail
				mv.setViewName("adminlogin");
				mv.addObject("message","Login Failed");
			}
			  return mv;
	}
	
	@GetMapping("viewallusers")
	public ModelAndView viewallusers() {
		ModelAndView mv = new ModelAndView("viewallusers");
		List<User> userList = adminService.ViewAllUsers();
        mv.addObject("userlist", userList);
		
		return mv;
		
	}
	@GetMapping("deleteuser")
	public ModelAndView deleteuser(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView();
	    String msg=adminService.deleteUser(id);
	    
	    mv.addObject("msg",msg);
	    mv.setViewName("redirect:/viewallusers");
	    
	    return mv;
	}
	
	@GetMapping("verifyuser")
	public ModelAndView verifyUser(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView();
	    String msg=adminService.verifyUser(id);
	    
	    mv.addObject("msg",msg);
	    mv.setViewName("redirect:/viewallusers");
	    
	    
	    return mv;
	}
	@GetMapping("viewalladvisors")
	public ModelAndView viewalladvisors() {
		ModelAndView mv = new ModelAndView("viewalladvisors");
		List<Advisor> advisorList = adminService.ViewAllAdvisors();
        mv.addObject("advisorlist", advisorList);
		
		return mv;
}
	@GetMapping("deleteadvisor")
	public ModelAndView deleteadvisor(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView();
	    String msg=adminService.deleteAdvisor(id);
	    
	    mv.addObject("msg",msg);
	    mv.setViewName("redirect:/viewalladvisor");
	    
	    return mv;
	}
	@GetMapping("verifyadvisor")
	public ModelAndView verify(@RequestParam("id") int id) {
		ModelAndView mv=new ModelAndView();
	    String msg=adminService.verifyAdvisor(id);
	    
	    mv.addObject("msg",msg);
	    mv.setViewName("redirect:/viewalladvisors");
	    
	    
	    return mv;
	}
	
	
}