package com.example.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.springboot.model.Advisor;



@Repository
public interface AdvisorRepository extends JpaRepository<Advisor, Long>
{
	@Query("select l from Advisor l where l.email=?1 and l.password=?2")
	public Advisor checkAdvisorLogin(String email, String password);

	


}
