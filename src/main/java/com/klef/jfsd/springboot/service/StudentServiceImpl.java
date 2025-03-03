package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Portfolio;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.PortfolioRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;
    
    @Autowired
    private PortfolioRepository portfolioRepository;
    
    @Override
    public String StudentRegistration(Student student) {
        studentRepository.save(student);
        return "Student Registered Successfully";
    }

    @Override
    public Student checkstudentlogin(String email, String password) {
        return studentRepository.checkstudentlogin(email, password);
    }

	@Override
	public List<Student> ViewAllfiles() 
	{
		return (List<Student>) studentRepository.findAll();
	}

	/*
	 * @Override public Optional<Student> findProjectById(int projectId) {
	 * Optional<Student> student = studentRepository.findById(projectId);
	 * 
	 * if (student.isPresent()) { return student; } else { // Handle the case where
	 * the project ID is not found throw new
	 * NoSuchElementException("No project found with ID: " + projectId); } }
	 */

	@Override
	public String AddFile(Student file) 
	{
		studentRepository.save(file);
		return "File Added Successfully";
	}

//	@Override
//	public List<Student> ViewStudentbyId(int sid)
//	{
//		return studentRepository.findByStudentid(null);
//	}

	@Override
	public List<Student> getAllProjects() 
	{
		 return studentRepository.findAll();
	}

	@Override
	public String AddOverview(Student student) {

	        studentRepository.save(student);
	        return "Project Overview Submitted Successfully";
	
	}
//
//	@Override
//	public long checkFacultyProjectMapping(Faculty f, Project p) {
//		return facultyProjectMappingRepository.checkfprojectmapping(f, p);
//	}

	@Override
	public List<Student> ViewStudentbyId(int sid) {
		return studentRepository.findByStudentid(null);
	}

//	@Override
//	public String facultyProjectMapping(FacultyProjectMapping fpm) {
//		facultyProjectMappingRepository.save(fpm);
//		return "Faculty Mapping Done";
//	}
	
	@Override
	public Portfolio SubmitPortfolio(Portfolio portfolio) {
		return portfolioRepository.save(portfolio);
		
		
	}

	@Override
	public Portfolio displayportfolio(String username) {
		return portfolioRepository.findByUsername(username);
	}
	
	public Student findById(int id) {
        return studentRepository.findById(id).orElse(null);
    }

}
