package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Student;

import jakarta.transaction.Transactional;


@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
    @Query("select s from Student s where s.studentemail=?1 and s.studentpassword=?2")
    public Student checkstudentlogin(String email, String password);
    
    public List<Student> findAll();
    
    
    //List<Student> findByProjectid(Integer projectid);

	List<Student> findByStudentid(String studentid);
	// @Query("SELECT s FROM Student s WHERE s.projectid = ?1")
	   // List<Student> findByProjectId(Integer projectId);
    
	 @Query("UPDATE Student s SET s.status = :status WHERE s.id = :sid")
		@Modifying 
		@Transactional 
	
	 public int updatestudentstatus(String status, int sid);
}
