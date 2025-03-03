package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Project;

public interface ProjectService 
{
	 public List<Project> getProjectsByMentorId(int mentorId);
	 public void saveProject(Project project, int facultyId);
	 public List<Project> findProjectsByFacultyId(int facultyId);
	 public Project findProjectById(int projectId);
	public List<Project> findProjectsByStudentId(int student);

	
	 

}
