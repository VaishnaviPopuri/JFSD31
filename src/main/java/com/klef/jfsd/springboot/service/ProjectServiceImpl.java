package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.repository.FacultyRepository;
import com.klef.jfsd.springboot.repository.ProjectRepository;
@Service
public class ProjectServiceImpl  implements ProjectService{

	
	 @Autowired
	 private ProjectRepository projectRepository;

	 @Autowired
	 private FacultyRepository facultyRepository;
	 
	@Override
	public List<Project> getProjectsByMentorId(int mentorId) {
		return projectRepository.findByFacultyId(mentorId);
	}
	
	 public void saveProject(Project project, int facultyId) {
	        // Find the Faculty entity based on the facultyId
	        Faculty faculty = facultyRepository.findById(facultyId)
	                .orElseThrow(() -> new RuntimeException("Faculty not found"));

	        // Associate the Faculty with the Project
	        project.setFaculty(faculty);

	        // Save the Project to the database
	        projectRepository.save(project);
	    }

	 
	 public List<Project> findProjectsByFacultyId(int facultyId) {
	        return projectRepository.findByFacultyId(facultyId);
	    }
	 public Project findProjectById(int projectId) {
		    return projectRepository.findById(projectId).get();
		}

	 public List<Project> findProjectsByStudentId(int student) {
		    List<Project> projects = projectRepository.findByStudentId(student);
		    if (projects.isEmpty()) {
		        System.out.println("No projects found for student ID: " + student);
		    } else {
		        System.out.println("Projects found: " + projects.size());
		    }
		    return projects;
		}


	 
	


	
	 
}

