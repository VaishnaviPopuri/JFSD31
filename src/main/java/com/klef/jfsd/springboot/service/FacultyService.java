package com.klef.jfsd.springboot.service;


import java.util.List;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;

public interface FacultyService
{
	public String FacultyRegistration(Faculty faculty);
	public Faculty checkfacultylogin(String username,String pwd);
	public String updateFacultyProfile(Faculty faculty);
	public Faculty displayFacultybyId(int fid);
	public List<Project> getProjectsByFacultyId(int facultyId);
	public Faculty findByUsername(String username);
	public Faculty findById(int id) ;
	  
}
