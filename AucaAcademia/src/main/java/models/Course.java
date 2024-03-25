package models;

import java.util.UUID;

public class Course {
    private UUID courseId;
    private String courseCode;
    private String courseName;
    private UUID semesterId; // Foreign key to semester table
    private UUID academicId; // Foreign key to academic_unit table

    public Course(UUID courseId, String courseCode, String courseName, UUID semesterId, UUID academicId) {
        this.courseId = courseId;
        this.courseCode = courseCode;
        this.courseName = courseName;
        this.semesterId = semesterId;
        this.academicId = academicId;
    }

    // Getters and setters
    public UUID getCourseId() {
        return courseId;
    }

    public void setCourseId(UUID courseId) {
        this.courseId = courseId;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public UUID getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(UUID semesterId) {
        this.semesterId = semesterId;
    }

    public UUID getAcademicId() {
        return academicId;
    }

    public void setAcademicId(UUID academicId) {
        this.academicId = academicId;
    }

    // toString method for easy printing
    @Override
    public String toString() {
        return "Course{" +
                "courseId=" + courseId +
                ", courseCode='" + courseCode + '\'' +
                ", courseName='" + courseName + '\'' +
                ", semesterId=" + semesterId +
                ", academicId=" + academicId +
                '}';
    }
}
