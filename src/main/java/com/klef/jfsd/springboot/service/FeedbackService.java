package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Feedback;
import com.klef.jfsd.springboot.repository.FeedbackRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FeedbackService {

	  @Autowired
	    private FeedbackRepository feedbackRepository;

	    public String saveFeedback(Feedback feedback) {
	        try {
	            feedbackRepository.save(feedback);
	            return "Thank you for your feedback!";
	        } catch (Exception e) {
	            return "An error occurred while saving your feedback.";
	        }
	    }
    // Method to fetch all feedbacks
    public List<Feedback> getAllFeedbacks() {
        return feedbackRepository.findAll();
    }
}
