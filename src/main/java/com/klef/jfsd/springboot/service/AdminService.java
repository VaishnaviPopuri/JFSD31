package com.klef.jfsd.springboot.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;


@Service
public interface AdminService 
{
	public String FacultyRegistration(Faculty faculty);
	public Admin checkadminlogin(String uname,String pwd);	
	public List<Faculty> ViewAllFaculty();
	public List<Student> ViewAllStudents();
	public List<Project> ViewAllProjects();
	public String deletefac(int fid);
	
	public void updateStudentStatus(int id, String status);
	public void deleteStudent(int id);
	Faculty displayFacultyById(int id);
	Project displayProjectById(int id);
	   
	
}
