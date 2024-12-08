package com.example.springboot.service;

import java.util.List;



import com.example.springboot.model.Admin;
import com.example.springboot.model.Advisor;
import com.example.springboot.model.User;

@Service
public interface AdminService {
	
	public Admin checkadminlogin(String uname, String pwd);
	public List<User> ViewAllUsers();
	public String deleteUser(long id);
	public String verifyUser(long id);
	public List<Advisor> ViewAllAdvisors();
	public String deleteAdvisor(long id);
	public String verifyAdvisor(long id);
	public long advisorcount();
	
}
