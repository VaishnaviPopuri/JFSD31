package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FeedbackService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	@Autowired
	private FeedbackService feedbackService;
	@GetMapping("/home")
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("/faqs")
	public ModelAndView faqs()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("faqs");
		return mv;
	}
	@GetMapping("aboutus")
	public ModelAndView aboutus()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("aboutus");
		return mv;
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	@GetMapping("facultyreg")
	public ModelAndView facreg()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("facultyreg");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		return mv;
	}
	@PostMapping("checkadminlogin")
	@ResponseBody
	public ModelAndView checkadminlogin(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		
		String auname	= request.getParameter("auname");
		String apwd		= request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			mv.setViewName("adminhome");
		}
		else
		{
			mv.setViewName("adminloginfail");
			mv.addObject("message","Login Failed");
		}
		return mv;
	
	}	
	
	@GetMapping("viewallfaculty")
    public ModelAndView viewallfac()
    {
      ModelAndView mv = new ModelAndView();
      List<Faculty> facultylist = adminService.ViewAllFaculty();
      mv.setViewName("viewallfaculty");
      mv.addObject("faclist",facultylist);
      
      return mv;
    }
	@GetMapping("viewallstudents")
    public ModelAndView viewallstudents()
    {
      ModelAndView mv = new ModelAndView();
      List<Student> studentlist = adminService.ViewAllStudents();
      mv.setViewName("viewallstudents");
      mv.addObject("studentlist",studentlist);
      
      return mv;
    }
	
	@GetMapping("deletefac")
    public ModelAndView deletefac()
    {
      ModelAndView mv = new ModelAndView();
      List<Faculty> faclist = adminService.ViewAllFaculty();
      mv.setViewName("deletefac");
      mv.addObject("faclist",faclist);
      return mv;
    }

	@GetMapping("delete")
	public String deleteoperation(@RequestParam("id") int fid)
	{
		adminService.deletefac(fid);
		
		return "redirect:/deletefac";
	}
//	  @GetMapping("deleteStudent")
//	    public ModelAndView deleteStudentPage() {
//	        ModelAndView mv = new ModelAndView();
//	        List<Student> studentList = adminService.ViewAllStudents();
//	        mv.setViewName("deletestudent");
//	        mv.addObject("studentlist", studentList);
//	        return mv;
//	    }
//	  
	  @GetMapping("/deletestudent")
	  public String showDeleteStudentPage(Model model) {
	      List<Student> students = adminService.ViewAllStudents(); // Ensure this method returns a valid list
	      model.addAttribute("studentlist", students);
	      return "deletestudent"; // Name should match the JSP page
	  }

	    @GetMapping("deleteStudentById")
	    public String deleteStudent(@RequestParam("id") int id) {
	    	 List<Student> studentList = adminService.ViewAllStudents();
	        adminService.deleteStudent(id);
	        return "redirect:/deletestudent";
	    }
	
	 @GetMapping("updatestudentstatus")
	    public ModelAndView updateStudentStatusPage() {
	        ModelAndView mv = new ModelAndView("updatestudentstatus");
	        mv.addObject("studentlist", adminService.ViewAllStudents());
	        return mv;
	    }

	    @PostMapping("updatestatus")
	    public String updateStatus(@RequestParam("id") int id, @RequestParam("status") String status) {
	        adminService.updateStudentStatus(id, status);
	        return "redirect:/updatestudentstatus";
	    }
	    
	    @GetMapping("viewallprojects")
	    public ModelAndView viewallprojects()
	    {
	      ModelAndView mv = new ModelAndView();
	      List<Project> projectlist = adminService.ViewAllProjects();
	      mv.setViewName("viewallprojects");
	      mv.addObject("projectlist",projectlist);
	      
	      return mv;
	    }
	    @GetMapping("/viewAllFeedback")
	    public ModelAndView viewAllFeedback(ModelAndView mv) {
	        List<Feedback> feedbackList = feedbackService.getAllFeedbacks();  // Fetch feedback data
	        mv.setViewName("viewfeedback");  // JSP file for displaying feedback
	        mv.addObject("feedbackList", feedbackList);  // Add feedback list to the model
	        return mv;
	    }

}
