package com.klef.jfsd.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

@Entity
@Table(name = "feedback_table")
public class Feedback {

    // Unique Identifier
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false, unique = true)
    private Long id;

    // User Information
    @Column(name = "user_type", nullable = false)
    private String userType;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "email", nullable = false)
    private String email;

    // Ratings
    @Column(name = "design_rating", nullable = false)
    private int designRating;

    @Column(name = "upload_rating", nullable = false)
    private int uploadRating;

    @Column(name = "response_rating", nullable = false)
    private int responseRating;

    // Additional Feedback
    @Column(name = "additional_feedback")
    private String additionalFeedback;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDesignRating() {
        return designRating;
    }

    public void setDesignRating(int designRating) {
        this.designRating = designRating;
    }

    public int getUploadRating() {
        return uploadRating;
    }

    public void setUploadRating(int uploadRating) {
        this.uploadRating = uploadRating;
    }

    public int getResponseRating() {
        return responseRating;
    }

    public void setResponseRating(int responseRating) {
        this.responseRating = responseRating;
    }

    public String getAdditionalFeedback() {
        return additionalFeedback;
    }

    public void setAdditionalFeedback(String additionalFeedback) {
        this.additionalFeedback = additionalFeedback;
    }
}
