package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FeedbackController {

    @Autowired
    private FeedbackRepository feedbackRepository;

    // Handle the form submission
    @PostMapping("/feedbacksuccess")
    public String submitFeedback(
        @RequestParam("user_type") String userType,
        @RequestParam String name,
        @RequestParam String email,
        @RequestParam("design_rating") int designRating,
        @RequestParam("upload_rating") int uploadRating,
        @RequestParam("response_rating") int responseRating,
        @RequestParam("additional_feedback") String additionalFeedback,
        Model model) {

        // Create a new Feedback object
        Feedback feedback = new Feedback();
        feedback.setUserType(userType);
        feedback.setName(name);
        feedback.setEmail(email);
        feedback.setDesignRating(designRating);
        feedback.setUploadRating(uploadRating);
        feedback.setResponseRating(responseRating);
        feedback.setAdditionalFeedback(additionalFeedback);

        // Save the feedback to the database
        feedbackRepository.save(feedback);

        // Add a success message to the model (optional)
        model.addAttribute("message", "Thank you for your feedback!");

        // Redirect to a success page or render the success view
        return "feedbacksuccess"; // Ensure this is a valid JSP or HTML page
    }
}
