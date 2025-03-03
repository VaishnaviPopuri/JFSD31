package com.klef.jfsd.springboot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "facultyprojectmapping_table")
public class FacultyProjectMapping 
{
	 @Id
	  @GeneratedValue(strategy = GenerationType.IDENTITY)
	  private int mappingid;
	  
	  @ManyToOne(cascade = CascadeType.ALL)
	  @JoinColumn(name = "faculty_id")
	  private Faculty faculty;
	  
	  @ManyToOne(cascade = CascadeType.ALL)
	  @JoinColumn(name = "project_id") 
	  private Project project;

	public int getMappingid() {
		return mappingid;
	}

	public void setMappingid(int mappingid) {
		this.mappingid = mappingid;
	}

	public Faculty getFaculty() {
		return faculty;
	}

	public void setFaculty(Faculty faculty) {
		this.faculty = faculty;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
	
	

}
