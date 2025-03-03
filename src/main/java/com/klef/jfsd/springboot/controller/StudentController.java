package com.klef.jfsd.springboot.controller;

import java.sql.Blob;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Faculty;
import com.klef.jfsd.springboot.model.Portfolio;
import com.klef.jfsd.springboot.model.Project;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.FacultyService;
import com.klef.jfsd.springboot.service.ProjectService;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;
    
    @Autowired
    private FacultyService facultyService;
  
    @Autowired
    private AdminService adminService;
    
    @Autowired
    private ProjectService projectService;
    
    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("studentreg")
    public ModelAndView studentreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentreg");
        return mv;
    }

    @GetMapping("studentlogin")
    public ModelAndView studentlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        

        return mv;
    }

    @PostMapping("addstudent")
    public ModelAndView addstudent(HttpServletRequest request) {
        String studentid = request.getParameter("studentid");
        String studentname = request.getParameter("studentname");
        String studentemail = request.getParameter("studentemail");
        String studentpassword = request.getParameter("studentpassword");
        String studentyear = request.getParameter("studentyear");
        String studentdept = request.getParameter("studentdept");
        String status = "Registered";

        ModelAndView mv = new ModelAndView();

        // Check if any field is missing
        if (studentid == null || studentid.isEmpty() || 
            studentname == null || studentname.isEmpty() || 
            studentemail == null || studentemail.isEmpty() || 
            studentpassword == null || studentpassword.isEmpty() || 
            studentdept == null || studentdept.isEmpty() ||
            studentyear == null || studentyear.isEmpty() ||
        	status == null || status.isEmpty()) {
            mv.setViewName("studentreg");
            mv.addObject("message", "All fields are required. Please fill out all fields.");
            return mv;
        }

        // Register student if all fields are filled
        Student student = new Student();
        student.setStudentid(studentid);
        student.setStudentname(studentname);
        student.setStudentemail(studentemail);
        student.setStudentpassword(studentpassword);
        student.setStudentyear(studentyear);
        student.setDepartment(studentdept);
        student.setStatus(status);

        String msg = studentService.StudentRegistration(student);

        // Redirect to login page with a success message
        mv.setViewName("studentlogin");
        mv.addObject("message", "Registration successful. Please log in.");
        return mv;
    }

    @PostMapping("checkstudentlogin")
    public ModelAndView checkstudentlogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String email = request.getParameter("studentemail");
        String password = request.getParameter("studentpassword");

        Student student = studentService.checkstudentlogin(email, password);

//        if (student != null) {
           HttpSession session = request.getSession();
            session.setAttribute("student", student); 
            //session.setMaxInactiveInterval(5);
//            mv.setViewName("studenthome");
//        } else {
//            mv.setViewName("studentlogin");
//            mv.addObject("message", "Login Failed. Please check your credentials.");
//        }
        if (student != null && "Accepted".equals(student.getStatus())) {
            mv.setViewName("studenthome");
        } else {
            mv.setViewName("studentloginfail");
            mv.addObject("message", "Login Failed or Not Approved");
        }
        return mv;
 
    }

    @GetMapping("studenthome")
    public ModelAndView studenthome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studenthome");
        return mv;
    }
    
    @GetMapping("/studentprofile")
	public ModelAndView empprofile()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("studentprofile");
		return mv;
	}

    @GetMapping("/studentlogout")
    public ModelAndView studentlogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("student");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        mv.addObject("message", "You have been logged out.");
        return mv;
    }
    
    @GetMapping("upload")
	public ModelAndView upload()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("upload");
		return mv;
	}
    
//    @PostMapping("insertfile")
//    public ModelAndView insertfile(HttpServletRequest request, @RequestParam("file") MultipartFile file) throws Exception {
//        ModelAndView mv = new ModelAndView();
//        HttpSession session = request.getSession();
//        Student loggedInStudent = (Student) session.getAttribute("student");
//
//        // Check if the student is logged in
//        if (loggedInStudent == null) {
//            mv.setViewName("studentlogin");
//            mv.addObject("message", "Please log in to upload a project.");
//            return mv;
//        }
//
//        try {
//            int fileid = Integer.parseInt(request.getParameter("fileidd"));
//            String projecttitle = request.getParameter("projecttitle");
//            String projectdesc = request.getParameter("projectdesc");
//
//            byte[] bytes = file.getBytes();
//            Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
//
//            // Set project details, but reuse student info from session
//         //   loggedInStudent.setProjectid(fileid);
//            loggedInStudent.setProjectTitle(projecttitle);
//            loggedInStudent.setProjectDescription(projectdesc);
//            loggedInStudent.setFile(blob);
//
//            String msg = studentService.AddFile(loggedInStudent);
//            System.out.println(msg);
//            mv.setViewName("fileuploadedsuccess");
//            mv.addObject("message", msg);
//
//        } catch (Exception e) {
//            mv.setViewName("fileerror");
//            mv.addObject("message", e.getMessage());
//        }
//
//        return mv;
//    }
//    
 
//    @GetMapping("/uploadProject")
//    public String showUploadForm(Model model) {
//        return "uploadForm"; 
//    }
//
//    // Handle file upload (POST request)
  

  
    
   
    @GetMapping("viewfilebyid")
    public ModelAndView viewfilebyId()
    {
    	List<Student> filelist = studentService.ViewAllfiles();
    	ModelAndView mv = new ModelAndView("viewfilebyid");
    	mv.addObject("file",filelist);
    	return mv;
    }
    
    @PostMapping("displaystudent")
    public ModelAndView displaystudent(HttpServletRequest request)
    {
    	int sid = Integer.parseInt(request.getParameter("sid"));
    	List<Student> student = studentService.ViewStudentbyId(sid);
    	ModelAndView mv = new ModelAndView("displaystudent");
    	mv.addObject("student",student);
    	return mv;
   	}
    
    @GetMapping("submissions")
   	public ModelAndView submissions()
   	{
   		ModelAndView mv = new ModelAndView();
   		mv.setViewName("submissions");
   		return mv;
   	}
    @GetMapping("feedback")
   	public ModelAndView feedback()
   	{
   		ModelAndView mv = new ModelAndView();
   		mv.setViewName("feedback");
   		return mv;
   	}
    
//    @GetMapping("uploadprojectdetails")
//   	public String projectoverview(Model model)
//   	{
//  	List<Faculty> facultyList = adminService.ViewAllFaculty();
//    	 model.addAttribute("project", new Project());
//         model.addAttribute("faclist", facultyList);
//         return "uploadprojectdetails";
//        
//   	}

//    @PostMapping("/insertprojectdetails")
//    public String insertProjectDetails(
//            @RequestParam("studentId") int studentId,
//            @RequestParam("description") String description,
//            @RequestParam("milestones") String milestones,
//            @RequestParam("modules") String modules,
//            @RequestParam("resources") String resources,
//            @RequestParam("url") String url,
//            @RequestParam(value = "feedback", required = false) Integer feedback, // Optional
//            @RequestParam("facultyId") int facultyId) {
//
//        // Retrieve the student and faculty entities from their respective services
//        Student student = studentService.findById(studentId);
//        Faculty faculty = facultyService.findById(facultyId);
//
//        // Check if student and faculty are found
//        if (student == null || faculty == null) {
//            throw new IllegalArgumentException("Student or Faculty not found with the provided IDs.");
//        }
//
//        // Create a new Project object and set its fields
//        Project project = new Project();
//        project.setDescription(description);
//        project.setMilestones(milestones);
//        project.setModules(modules);
//        project.setResources(resources);
//        project.setUrl(url);
//        project.setFeedback(feedback != null ? feedback : 0); // Default to 0 if feedback is null
//        project.setStudent(student);
//        project.setFaculty(faculty);
//
//        // Save the project using the service
//        projectService.saveProject(project,facultyId);
//
//        // Return the name of the view to show after insertion
//        return "projectsubmission";
//    }
//    
    

    @GetMapping("createportfolio")
    public String createportfolio(Model m)
    {
    	m.addAttribute("portfolio",new Portfolio());
		return "createportfolio"; 
    }
    @PostMapping("insertportfolio")
    public ModelAndView insertportfolio(@ModelAttribute("portfolio") Portfolio p, 
                                        @RequestParam("portfolio_image") MultipartFile file, HttpServletRequest request
                               ) throws Exception {
        
    	 ModelAndView mv = new ModelAndView();
        // Convert the MultipartFile to a Blob
        byte[] bytes = file.getBytes();
        Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
        p.setImage(blob); 
        
        Portfolio portfolio =  studentService.SubmitPortfolio(p); 
        if(portfolio != null)
        {
        	 HttpSession session = request.getSession(); 
			 session.setAttribute("portfolio",portfolio ); 
			  mv.setViewName("download");
        }
        else
        {
        	mv.setViewName("download");
        }
       
        return mv;
    }
    
    
    
    @GetMapping("myportfolio")
    public ModelAndView myportfolio(HttpSession session) {
        ModelAndView mv = new ModelAndView("myportfolio");
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            mv.setViewName("studentlogin"); // Redirect to login if no student is logged in
            return mv;
        }

        Portfolio portfolio = (Portfolio) session.getAttribute("portfolio");
        if (portfolio == null) {
            // Fetch portfolio from database if not in session
            portfolio = studentService.displayportfolio(portfolio.getUsername());
            session.setAttribute("portfolio", portfolio);
        }

        mv.addObject("portfolio", portfolio);
        return mv;
    }

    
    @GetMapping("displayportfolioimage")
    public ResponseEntity<byte[]> displayPortfolioImage(@RequestParam String username) throws Exception {
        Portfolio portfolio = studentService.displayportfolio(username);
        byte[] imageBytes = null;

        if (portfolio != null && portfolio.getImage() != null) {
            imageBytes = portfolio.getImage().getBytes(1, (int) portfolio.getImage().length());
            return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
        }

        // Return a placeholder or error image if no image is found
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
    }
    
    
    @GetMapping("updateportfolio")
    public String updatePortfolioForm(HttpSession session, Model model) {
       
        Student student = (Student) session.getAttribute("student");
        
        
        if (student == null) {
            return "studentlogin"; 
        }
        
        // Fetch the current portfolio of the student
        Portfolio portfolio = studentService.displayportfolio(student.getStudentname());
        
        if (portfolio == null) {
            
            model.addAttribute("errorMessage", "Portfolio not found. Please create one first.");
            return "createportfolio";
        }
        model.addAttribute("portfolio", portfolio);
        return "updateportfolio"; // Return the updateportfolio.jsp (or HTML) for editing
    }
    

        

        // 2. Handle the form submission and update the portfolio
        @PostMapping("updateportfolio")
        public ModelAndView updatePortfolio(@ModelAttribute("portfolio") Portfolio portfolio,
                                            @RequestParam(value = "portfolio_image", required = false) MultipartFile file,
                                            HttpServletRequest request) throws Exception {

            ModelAndView mv = new ModelAndView();
            
            // Check if a new image is uploaded
            if (!file.isEmpty()) {
                // Convert the MultipartFile to a Blob
                byte[] bytes = file.getBytes();
                Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
                portfolio.setImage(blob); // Update the portfolio image
            }

            // Update the portfolio in the database
            Portfolio updatedPortfolio = studentService.SubmitPortfolio(portfolio);
            
            if (updatedPortfolio != null) {
                // If the portfolio is successfully updated, store the updated portfolio in the session
                HttpSession session = request.getSession();
                session.setAttribute("portfolio", updatedPortfolio);

                // Redirect to the portfolio view page
                mv.setViewName("myportfolio");
            } else {
                // If the update fails, show an error
                mv.setViewName("error");
                mv.addObject("errorMessage", "Failed to update portfolio.");
            }

            return mv;
        }
    
        
        @GetMapping("download") public ModelAndView download() 
        { 
        ModelAndView mv = new ModelAndView(); 
        mv.setViewName("download"); 
        return mv; 
        }
    
	  @GetMapping("/studentprojects")
        public String viewStudentProjects(Model model, HttpSession session) {
            // Retrieve the student object from the session
            Student student = (Student) session.getAttribute("student");
            if (student == null) {
                return "redirect:/studentlogin"; // Redirect to login if the student is not in the session
            }

            // Get all projects and filter them by the logged-in student's ID
            List<Project> allProjects = adminService.ViewAllProjects();
            List<Project> filteredProjects = allProjects.stream()
                    .filter(project -> project.getStudent() != null && project.getStudent().getId() == student.getId())
                    .collect(Collectors.toList());

            // Add the filtered projects to the model
            model.addAttribute("projects", filteredProjects);

            // Return the view name for student project submissions
            return "studentprojects";
        }
       

    
        @GetMapping("uploadprojectdetails")
       	public String projectoverview(Model model)
       	{
      	List<Faculty> facultyList = adminService.ViewAllFaculty();
        	 model.addAttribute("project", new Project());
             model.addAttribute("faclist", facultyList);
             return "uploadprojectdetails";
            
       	}


        @PostMapping("/insertprojectdetails")
        public String insertProjectDetails(
                @RequestParam("studentId") int studentId,
                @RequestParam("description") String description,
                @RequestParam("milestones") String milestones,
                @RequestParam("modules") String modules,
                @RequestParam("resources") String resources,
                @RequestParam("url") String url,
                @RequestParam(value = "feedback", required = false) Integer feedback, // Optional
                @RequestParam("facultyId") int facultyId) {

            // Retrieve the student and faculty entities from their respective services
            Student student = studentService.findById(studentId);
            Faculty faculty = facultyService.findById(facultyId);

            // Check if student and faculty are found
            if (student == null || faculty == null) {
                throw new IllegalArgumentException("Student or Faculty not found with the provided IDs.");
            }

            // Create a new Project object and set its fields
            Project project = new Project();
            project.setDescription(description);
            project.setMilestones(milestones);
            project.setModules(modules);
            project.setResources(resources);
            project.setUrl(url);
            project.setFeedback(feedback != null ? feedback : 0); // Default to 0 if feedback is null
            project.setStudent(student);
            project.setFaculty(faculty);

            // Save the project using the service
            projectService.saveProject(project,facultyId);

            // Return the name of the view to show after insertion
            return "projectsubmission";
        }
   

    
}
