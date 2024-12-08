package com.example.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springboot.model.Admin;
import com.example.springboot.model.Advisor;
import com.example.springboot.model.User;
import com.example.springboot.repository.AdminRepository;
import com.example.springboot.repository.AdvisorRepository;
import com.example.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminRepository adminRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private AdvisorRepository advisorRepository;

    @Override
    public Admin checkadminlogin(String uname, String pwd) {
        return adminRepository.checkadminlogin(uname, pwd);
    }

    @Override
    public List<User> ViewAllUsers() {
        return userRepository.findAll();
    }

    @Override
    public String deleteUser(long id) {
        userRepository.deleteById(id);
        return "User Deleted Successfully";
    }

    @Override
    public String verifyUser(long id) {
        Optional<User> optionalUser = userRepository.findById(id);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            user.setVerified(true);
            userRepository.save(user);
            return "User verified successfully";
        } else {
            return "User not found. Please try again.";
        }
    }

    @Override
    public List<Advisor> ViewAllAdvisors() {
        return advisorRepository.findAll();
    }

    @Override
    public String deleteAdvisor(long id) {
        advisorRepository.deleteById(id);
        return "Advisor Deleted Successfully";
    }

    @Override
    public String verifyAdvisor(long id) {
        Optional<Advisor> optionalAdvisor = advisorRepository.findById(id);
        if (optionalAdvisor.isPresent()) {
            Advisor advisor = optionalAdvisor.get();
            advisor.setVerified(true);
            advisorRepository.save(advisor);
            return "Advisor verified successfully";
        } else {
            return "Advisor not found. Please try again.";
        }
    }

    @Override
    public long advisorcount() {
        return advisorRepository.count();
    }
}
