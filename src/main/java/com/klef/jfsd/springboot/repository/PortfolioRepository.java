package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Portfolio;
import java.util.List;



@Repository
public interface PortfolioRepository  extends JpaRepository<Portfolio, String> 
{
	
	Portfolio findByUsername(String username);
	

}
