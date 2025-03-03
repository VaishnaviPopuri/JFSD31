package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.ProjectService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FacultyController 
{
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private ProjectService projectService;
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping("/faculty")
	public ModelAndView home() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("home");
	    return mv;
	}

//	 @GetMapping("facultyreg")
//	   public ModelAndView facultyreg()
//	   {
//		   ModelAndView mv = new ModelAndView();
//		   mv.setViewName("facultyreg");
//		   return mv;
//	   }
	 
	 @GetMapping("facultylogin")
	   public ModelAndView facultylogin()
	   {
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("facultylogin");
		   return mv;
	   }
	   
	 @PostMapping("insertfaculty")
	   public ModelAndView insertfaculty(HttpServletRequest request,@RequestParam("facultyimage") MultipartFile file) throws Exception
	   {   
		int id = Integer.parseInt(request.getParameter("fid"));
	    String uname = request.getParameter("fname");
	    String gender = request.getParameter("fgender");
	    String email = request.getParameter("femail");
	    String password = request.getParameter("fpwd");
	    String dept = request.getParameter("fdept");
	    String contact = request.getParameter("fcontact");
	    byte[] bytes = file.getBytes();
		  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
	    
       Faculty faculty = new Faculty();
	      
	     faculty.setId(id);
	     faculty.setUsername(uname);
	     faculty.setGender(gender);
	     faculty.setEmail(email);
	     faculty.setPassword(password);
	     faculty.setDepartment(dept);
	     faculty.setContact(contact);
	     faculty.setImage(blob);
	     
	     String msg = facultyService.FacultyRegistration(faculty);
	      
	      ModelAndView mv = new ModelAndView("regsuccess");
	      mv.addObject("message", msg);
	    
	      return mv;

	   }
	   
	   
	   @PostMapping("checkfacultylogin")
	   public ModelAndView checkfacultylogin(HttpServletRequest request)
	   {
		   ModelAndView mv = new ModelAndView();
		   String email = request.getParameter("femail");
		   String pwd = request.getParameter("fpwd");
			
			Faculty faculty = facultyService.checkfacultylogin(email, pwd);
			if(faculty != null)
			 {
					
				HttpSession session = request.getSession();
				session.setAttribute("faculty",faculty);
				 session.setMaxInactiveInterval(5);
				 
				 mv.setViewName("facultyhome");
			 }
			 else
			 {
				 mv.setViewName("facultylogin");
				 mv.addObject("message", "Login Failed");
			 }
		   return mv;
	   }
	      
	   @GetMapping("facultyhome")
	   public ModelAndView facultyhome()
	   {
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("facultyhome");
		   return mv;
	   }
	   
	   @GetMapping("facultylogout")
	   public ModelAndView facultylogout()
	   {
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("facultylogin");
		   return mv;
	   }
	   
	   @GetMapping("updatefaculty")
	   public ModelAndView updatefaculty()
	   {
		   ModelAndView mv = new ModelAndView("updatefaculty");
		   return mv;
	   }

	   @PostMapping("updatefaculty")
	   public ModelAndView updatefacultyprofile(HttpServletRequest request)
	   {
		   ModelAndView mv = new ModelAndView();
		   try
		   {
			   int id = Integer.parseInt(request.getParameter("fid"));
			   String name = request.getParameter("uname");
			   
			// String email = request.getParameter("femail");
			   String password = request.getParameter("fpwd");
			   String contact = request.getParameter("fcontact");
			   
			   Faculty faculty= new Faculty();
			   faculty.setId(id);
			   faculty.setUsername(name);
			 //faculty.setEmail(email);
			   
			   faculty.setPassword(password);
			   faculty.setContact(contact);
			   
			   String msg = facultyService.updateFacultyProfile(faculty);
			    Faculty f = facultyService.displayFacultybyId(id);
			   
			   HttpSession session = request.getSession();
		       session.setAttribute("faculty",f);
			   
			   mv.setViewName("adminhome");
		       mv.addObject("message", msg);
			      
		   }
		   catch(Exception e)
		   {
			 mv.setViewName("updateerror");
			 mv.addObject("message", e);
			   
		   }
	   	
	   	return mv;
	   }
	   
	   @GetMapping("facultyprofile")
	   public ModelAndView facultyprofile(HttpServletRequest request)
	   {
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("facultyprofile");
		   return mv;
	   }
	   
//	   @GetMapping("facultysessionexpiry")
//	   public ModelAndView facultysessionexpiry()
//	   {
//		   ModelAndView mv = new ModelAndView("facultysessionexpiry"); 
//		   return mv;   
//	   }
	   @GetMapping("displayfacultyimage")
	   public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam ("id")  int id) throws Exception
	   {
	     Faculty faculty =  facultyService.displayFacultybyId(id);
	     byte [] imageBytes = null;
	     imageBytes = faculty.getImage().getBytes(1,(int) faculty.getImage().length());

	     return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	   }
	   @GetMapping("/facultyprojectsubmissions")
	   public String viewFacultyProjects(Model model, HttpSession session) {
	       Faculty faculty = (Faculty) session.getAttribute("faculty");
	       if (faculty == null) {
	           return "redirect:/facultylogin";
	       }

	       List<Project> allProjects = adminService.ViewAllProjects();
	       List<Project> filteredProjects = allProjects.stream()
	           .filter(project -> project.getFaculty() != null && project.getFaculty().getId() == faculty.getId())
	           .collect(Collectors.toList());

	       model.addAttribute("projects", filteredProjects);
	       return "facultyprojectsubmissions";
	   }
	 
	   
	   @PostMapping("/submitFeedback")
	   public String submitFeedback(
	           @RequestParam("projectId") int projectId,
	           @RequestParam("feedback") int feedback,
	           Model model) {
	       try {
	           // Fetch the project by ID
	           Project project = projectService.findProjectById(projectId);

	           // Update the project's feedback
	           project.setFeedback(feedback);
	           projectService.saveProject(project, project.getFaculty().getId());

	           // Redirect to the faculty project submissions page with success message
	           model.addAttribute("message", "Feedback submitted successfully!");
	           return "redirect:/facultyprojectsubmissions?facultyId=" + project.getFaculty().getId();
	       } catch (Exception e) {
	           // Handle errors and redirect with an error message
	           model.addAttribute("error", "Failed to submit feedback: " + e.getMessage());
	           return "error"; // Customize with an error page if available
	       }
	   }

	  







	   
	   



	   
	   
	  
	   

}
