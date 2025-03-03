package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.FacultyProjectMapping;
import com.klef.jfsd.springboot.model.Portfolio;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;

public interface StudentService 
{
	public String StudentRegistration(Student student);
	public Student checkstudentlogin(String studentemail, String password);
	public String AddFile(Student student);
	public List<Student> ViewStudentbyId(int sid);
	public List<Student> ViewAllfiles();
//	public Optional<Student> findProjectById(int fileid);
	public List<Student> getAllProjects();
	public String AddOverview(Student student);
	//public long checkFacultyProjectMapping(Faculty f,Project p);
	 // public String facultyProjectMapping(FacultyProjectMapping fpm);
	public Portfolio SubmitPortfolio(Portfolio portfolio);
	public Portfolio displayportfolio(String username);
	
	 public Student findById(int id);

}
