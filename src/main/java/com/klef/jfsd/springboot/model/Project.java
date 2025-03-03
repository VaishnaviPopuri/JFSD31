package com.klef.jfsd.springboot.model;



import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "project_table")
public class Project 
{
	
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "project_id", nullable = true, unique = true)
	    private int projectid;

	    @Column(nullable = false, length = 500)
	    private String description;

	   
	    @Column(name = "milestones",length = 500)
	    private String milestones;


	    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	    @JoinColumn(name = "faculty_id", nullable = false)
	    private Faculty faculty;

	    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	    @JoinColumn(name = "student_id", nullable = false)
	    private Student student;

	   
	    @Column(name = "modules",length = 500)
	    private String modules ;

	   
	    @Column(name = "resources",length = 500)
	    private String resources;
	    
	    @Column(name = "project_url",length = 500)
	    private String url;
	    
	    @Column(name = "feedback", nullable = false)
	    private Integer feedback; // Use Integer to allow null values initially

	    public Integer getFeedback() {
	        return feedback;
	    }

	    public void setFeedback(Integer feedback) {
	        this.feedback = feedback;
	    }

		public int getProjectid() {
			return projectid;
		}

		public void setProjectid(int projectid) {
			this.projectid = projectid;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getMilestones() {
			return milestones;
		}

		public void setMilestones(String milestones) {
			this.milestones = milestones;
		}

		public Faculty getFaculty() {
			return faculty;
		}

		public void setFaculty(Faculty faculty) {
			this.faculty = faculty;
		}

		

		

		public String getModules() {
			return modules;
		}

		public void setModules(String modules) {
			this.modules = modules;
		}

		public String getResources() {
			return resources;
		}

		public void setResources(String resources) {
			this.resources = resources;
		}

		public String getUrl() {
			return url;
		}

		public void setUrl(String url) {
			this.url = url;
		}

		public Student getStudent() {
			return student;
		}

		public void setStudent(Student student) {
			this.student = student;
		}

		

		

		

		
		
	}