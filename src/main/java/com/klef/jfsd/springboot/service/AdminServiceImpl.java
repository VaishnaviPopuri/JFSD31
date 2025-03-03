package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;
@Service
public class AdminServiceImpl implements AdminService
{

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired 
	private StudentRepository studentRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) 
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<Faculty> ViewAllFaculty() 
	{
		return facultyRepository.findAll();
	}

	@Override
	public String deletefac(int fid) {
		facultyRepository.deleteById(fid);
		return "Faculty Deleted Successfully";
	}
	
	@Override
	public String FacultyRegistration(Faculty faculty) 
	{
		facultyRepository.save(faculty);
		return "Faculty Registered Successfully";
	}

	@Override
	public List<Student> ViewAllStudents() 
	{
		return studentRepository.findAll();
	}

	

	@Override
	public void updateStudentStatus(int id, String status)
	{
		Student student = studentRepository.findById(id).orElse(null);
        if (student != null) {
            student.setStatus(status);
            studentRepository.save(student);
        }
		
	}

	@Override
	public void deleteStudent(int id) {
		studentRepository.deleteById(id);
		
	}

	@Override
	public Faculty displayFacultyById(int id) {
		// TODO Auto-generated method stub
		return facultyRepository.findById(id).get();
	}

	@Override
	public Project displayProjectById(int id) {
		
		return projectRepository.findById(id).get();
	}

	@Override
	public List<Project> ViewAllProjects() 
	{
		return projectRepository.findAll();
		
	}




}
