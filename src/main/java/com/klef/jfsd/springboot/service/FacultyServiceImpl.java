package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public class FacultyServiceImpl implements FacultyService
{
	@Autowired
    private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
    
	@Autowired
	private ProjectRepository projectRepository;
	
	@Override
	public String FacultyRegistration(Faculty faculty) 
	{
		facultyRepository.save(faculty);
		return "Faculty Registered Successfully";
	}

	@Override
	public Faculty checkfacultylogin(String username, String pwd) {
		
		return facultyRepository.checkfacultylogin(username, pwd);
	}
	
	@Override
	public String updateFacultyProfile(Faculty faculty) 
	{
		Faculty f = facultyRepository.findById(faculty.getId()).get();
		
		f.setUsername(faculty.getUsername());
	    //f.setEmail(faculty.getEmail());
		f.setContact(faculty.getContact());
		f.setPassword(faculty.getPassword());
		
		facultyRepository.save(f);
		
		return "Faculty Updated Successfully";
	}

	@Override
	public Faculty displayFacultybyId(int fid)
	{
		return facultyRepository.findById(fid).get();
		
	}
	public List<Project> getProjectsByFacultyId(int facultyId) {
	    return projectRepository.findByFacultyId(facultyId);
	}
	public Faculty findByUsername(String username) {
	    return facultyRepository.findByUsername(username); // Implement this in your repository
	}
	public Faculty findById(int id) {
        return facultyRepository.findById(id).orElse(null);
    }

	

	

}
