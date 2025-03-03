package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.sql.Blob;

import jakarta.persistence.Column;

@Entity
@Table(name = "portfolio_table")
public class Portfolio {

    // Unique Identifier
    @Id
    @Column(name = "username", nullable = false, unique = true)
    private String username;

    // Personal Information
    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "job_title", nullable = false)
    private String jobTitle;

    @Column(name = "location", nullable = false)
    private String location;

    @Column(name = "email", nullable = false)
    private String email;

    @Column(name = "phone", nullable = false)
    private String phone;

    // Skills
    @Column(name = "skill1")
    private String skill1;

    @Column(name = "skill1_percentage")
    private Integer skill1Percentage;

    @Column(name = "skill2")
    private String skill2;

    @Column(name = "skill2_percentage")
    private Integer skill2Percentage;

    @Column(name = "skill3")
    private String skill3;

    @Column(name = "skill3_percentage")
    private Integer skill3Percentage;

    // Languages
    @Column(name = "language1")
    private String language1;

    @Column(name = "language1_level")
    private Integer language1Level;

    @Column(name = "language2")
    private String language2;

    @Column(name = "language2_level")
    private Integer language2Level;

    @Column(name = "language3")
    private String language3;

    @Column(name = "language3_level")
    private Integer language3Level;

    // Work Experience
    @Column(name = "work_experience1")
    private String workExperience1;

    @Column(name = "work_experience1_duration")
    private String workExperience1Duration;

    @Column(name = "work_experience1_description")
    private String workExperience1Description;

    @Column(name = "work_experience2")
    private String workExperience2;

    @Column(name = "work_experience2_duration")
    private String workExperience2Duration;

    @Column(name = "work_experience2_description")
    private String workExperience2Description;

    // Education
    @Column(name = "education1")
    private String education1;

    @Column(name = "education1_duration")
    private String education1Duration;

    @Column(name = "education1_description")
    private String education1Description;

    @Column(name = "education2")
    private String education2;

    @Column(name = "education2_duration")
    private String education2Duration;

    @Column(name = "education2_description")
    private String education2Description;

    // Achievements
    @Column(name = "achievement1")
    private String achievement1;

    @Column(name = "achievement2")
    private String achievement2;
    // Projects
    @Column(name = "project1")
    private String project1;

    @Column(name = "project1_description")
    private String project1Description;

    @Column(name = "project2")
    private String project2;

    @Column(name = "project2_description")
    private String project2Description;
    
    
     @Column(name="portfolio_image",nullable = false)
	 private Blob image;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSkill1() {
		return skill1;
	}

	public void setSkill1(String skill1) {
		this.skill1 = skill1;
	}

	public Integer getSkill1Percentage() {
		return skill1Percentage;
	}

	public void setSkill1Percentage(Integer skill1Percentage) {
		this.skill1Percentage = skill1Percentage;
	}

	public String getSkill2() {
		return skill2;
	}

	public void setSkill2(String skill2) {
		this.skill2 = skill2;
	}

	public Integer getSkill2Percentage() {
		return skill2Percentage;
	}

	public void setSkill2Percentage(Integer skill2Percentage) {
		this.skill2Percentage = skill2Percentage;
	}

	public String getSkill3() {
		return skill3;
	}

	public void setSkill3(String skill3) {
		this.skill3 = skill3;
	}

	public Integer getSkill3Percentage() {
		return skill3Percentage;
	}

	public void setSkill3Percentage(Integer skill3Percentage) {
		this.skill3Percentage = skill3Percentage;
	}

	public String getLanguage1() {
		return language1;
	}

	public void setLanguage1(String language1) {
		this.language1 = language1;
	}

	public Integer getLanguage1Level() {
		return language1Level;
	}

	public void setLanguage1Level(Integer language1Level) {
		this.language1Level = language1Level;
	}

	public String getLanguage2() {
		return language2;
	}

	public void setLanguage2(String language2) {
		this.language2 = language2;
	}

	public Integer getLanguage2Level() {
		return language2Level;
	}

	public void setLanguage2Level(Integer language2Level) {
		this.language2Level = language2Level;
	}

	public String getLanguage3() {
		return language3;
	}

	public void setLanguage3(String language3) {
		this.language3 = language3;
	}

	public Integer getLanguage3Level() {
		return language3Level;
	}

	public void setLanguage3Level(Integer language3Level) {
		this.language3Level = language3Level;
	}

	public String getWorkExperience1() {
		return workExperience1;
	}

	public void setWorkExperience1(String workExperience1) {
		this.workExperience1 = workExperience1;
	}

	public String getWorkExperience1Duration() {
		return workExperience1Duration;
	}

	public void setWorkExperience1Duration(String workExperience1Duration) {
		this.workExperience1Duration = workExperience1Duration;
	}

	public String getWorkExperience1Description() {
		return workExperience1Description;
	}

	public void setWorkExperience1Description(String workExperience1Description) {
		this.workExperience1Description = workExperience1Description;
	}

	public String getWorkExperience2() {
		return workExperience2;
	}

	public void setWorkExperience2(String workExperience2) {
		this.workExperience2 = workExperience2;
	}

	public String getWorkExperience2Duration() {
		return workExperience2Duration;
	}

	public void setWorkExperience2Duration(String workExperience2Duration) {
		this.workExperience2Duration = workExperience2Duration;
	}

	public String getWorkExperience2Description() {
		return workExperience2Description;
	}

	public void setWorkExperience2Description(String workExperience2Description) {
		this.workExperience2Description = workExperience2Description;
	}

	public String getEducation1() {
		return education1;
	}

	public void setEducation1(String education1) {
		this.education1 = education1;
	}

	public String getEducation1Duration() {
		return education1Duration;
	}

	public void setEducation1Duration(String education1Duration) {
		this.education1Duration = education1Duration;
	}

	public String getEducation1Description() {
		return education1Description;
	}

	public void setEducation1Description(String education1Description) {
		this.education1Description = education1Description;
	}

	public String getEducation2() {
		return education2;
	}

	public void setEducation2(String education2) {
		this.education2 = education2;
	}

	public String getEducation2Duration() {
		return education2Duration;
	}

	public void setEducation2Duration(String education2Duration) {
		this.education2Duration = education2Duration;
	}

	public String getEducation2Description() {
		return education2Description;
	}

	public void setEducation2Description(String education2Description) {
		this.education2Description = education2Description;
	}

	public String getAchievement1() {
		return achievement1;
	}

	public void setAchievement1(String achievement1) {
		this.achievement1 = achievement1;
	}

	public String getAchievement2() {
		return achievement2;
	}

	public void setAchievement2(String achievement2) {
		this.achievement2 = achievement2;
	}

	public String getProject1() {
		return project1;
	}

	public void setProject1(String project1) {
		this.project1 = project1;
	}

	public String getProject1Description() {
		return project1Description;
	}

	public void setProject1Description(String project1Description) {
		this.project1Description = project1Description;
	}

	public String getProject2() {
		return project2;
	}

	public void setProject2(String project2) {
		this.project2 = project2;
	}

	public String getProject2Description() {
		return project2Description;
	}

	public void setProject2Description(String project2Description) {
		this.project2Description = project2Description;
	}

	public Blob getImage() {
		return image;
	}

	public void setImage(Blob image) {
		this.image = image;
	}

   
}
