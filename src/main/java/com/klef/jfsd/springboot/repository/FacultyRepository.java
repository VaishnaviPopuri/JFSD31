package com.klef.jfsd.springboot.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer>
{
	@Query("select f from Faculty f where f.email=?1 and f.password=?2")
    public Faculty checkfacultylogin(String email, String pwd);
	
	/* List<Project> findByFacultyId(int faculty); */
	
	public Faculty findByUsername(String username);
	
	
}
