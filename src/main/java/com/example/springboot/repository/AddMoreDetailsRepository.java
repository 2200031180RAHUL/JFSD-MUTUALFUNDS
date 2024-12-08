package com.example.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.springboot.model.AddMoreDetails;

@Repository
public interface AddMoreDetailsRepository extends JpaRepository<AddMoreDetails, Long> {
	
	public List<AddMoreDetails> findByUserId(String userId);


}
