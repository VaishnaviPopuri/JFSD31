package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Integer> 

{
	List<Project> findByFacultyId(int facultyId);
	
	@Query("SELECT p FROM Project p JOIN FETCH p.student WHERE p.student.id = :studentId")
	List<Project> findByStudentId(@Param("studentId") int studentId);




}
