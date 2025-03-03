package com.klef.jfsd.springboot.model;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "student_table")
public class Student {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "sid", nullable = false, unique = true)
    private String studentid;

    @Column(name = "sname", nullable = false, length = 30)
    private String studentname;

    @Column(name = "semail", nullable = false, length = 30, unique = true)
    private String studentemail;
    
    @Column(name = "sdept", nullable = false, length = 30)
    private String Department;

    @Column(name = "spassword", nullable = false, length = 30)
    private String studentpassword;

    @Column(name = "syear", nullable = false)
    private String studentyear;
    
    @Column(name = "sstatus", nullable = false, length = 30)
    private String status;


    @Column(name = "project_file", nullable = true)
    private Blob file;

    @Column(name = "project_title", nullable = true, length = 100)
    private String projectTitle;

    @Column(name = "project_description", nullable = true, length = 255)
    private String projectDescription;

    @Column(name = "file_name", nullable = true, length = 100)
    private String fileName; // Store the file name

    @Column(name = "file_path", nullable = true, length = 255)
    private String filePath; // Store the file path

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "upload_date", nullable = true)
    private Date uploadDate; // Annotated to be stored in the database

    @OneToMany(mappedBy = "student", cascade = CascadeType.ALL)
    private List<Project> projects = new ArrayList<>();
	

	

	@Override
	public String toString() {
		return "Student [id=" + id + ", studentid=" + studentid + ", studentname="
				+ studentname + ", studentemail=" + studentemail + ", Department=" + Department + ", studentpassword="
				+ studentpassword + ", studentyear=" + studentyear + ", status=" + status + ", file=" + file
				+ ", projectTitle=" + projectTitle + ", projectDescription=" + projectDescription + ", fileName="
				+ fileName + ", filePath=" + filePath + ", uploadDate=" + uploadDate + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentid() {
		return studentid;
	}

	public void setStudentid(String studentid) {
		this.studentid = studentid;
	}

	public String getStudentname() {
		return studentname;
	}

	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}

	public String getStudentemail() {
		return studentemail;
	}

	public void setStudentemail(String studentemail) {
		this.studentemail = studentemail;
	}

	public String getDepartment() {
		return Department;
	}

	public void setDepartment(String department) {
		Department = department;
	}

	public String getStudentpassword() {
		return studentpassword;
	}

	public void setStudentpassword(String studentpassword) {
		this.studentpassword = studentpassword;
	}

	public String getStudentyear() {
		return studentyear;
	}

	public void setStudentyear(String studentyear) {
		this.studentyear = studentyear;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	

	public Blob getFile() {
		return file;
	}

	public void setFile(Blob file) {
		this.file = file;
	}

	public String getProjectTitle() {
		return projectTitle;
	}

	public void setProjectTitle(String projectTitle) {
		this.projectTitle = projectTitle;
	}

	public String getProjectDescription() {
		return projectDescription;
	}

	public void setProjectDescription(String projectDescription) {
		this.projectDescription = projectDescription;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> projects) {
		this.projects = projects;
	}

}
