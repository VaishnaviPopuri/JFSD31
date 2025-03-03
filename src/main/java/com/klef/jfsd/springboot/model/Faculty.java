package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToMany;

@Entity
@Table(name="faculty_table")
public class Faculty
{
	@Id
	@Column(name="faculty_id")
	private int id;
	@Column(name="faculty_uname",nullable=false,length = 50)
	private String username;
	@Column(name="faculty_gender",nullable=false,length = 20)
	 private String gender;
	@Column(name="faculty_email",nullable=false,unique = true,length = 50)
	 private String email;
	@Column(name="faculty_department",nullable=false,length = 50)
	 private String department;
	 @Column(name="faculty_password",nullable=false,length = 50)
	 private String password;
	 @Column(name="faculty_contact",nullable=false,unique = true,length = 20)
	 private String contact;
	 @Column(name="faculty_image",nullable = false)
	 private Blob image;
	 
	 @OneToMany(mappedBy = "faculty", cascade = CascadeType.ALL)
	    private List<Project> projects = new ArrayList<>();
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Blob getImage() {
		return image;
	}
	public void setImage(Blob image) {
		this.image = image;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public List<Project> getProjects() {
		return projects;
	}
	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}
}
