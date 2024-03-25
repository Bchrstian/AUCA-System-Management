package models;

import java.sql.Timestamp;
import java.util.UUID;

public class Semester {
    private UUID semesterId;
    private String semesterName;
    private Timestamp startingDate;
    private Timestamp endDate;

    public Semester(UUID semesterId, String semesterName, Timestamp startingDate, Timestamp endDate) {
        this.semesterId = semesterId;
        this.semesterName = semesterName;
        this.startingDate = startingDate;
        this.endDate = endDate;
    }

    // Getters and setters
    public UUID getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(UUID semesterId) {
        this.semesterId = semesterId;
    }

    public String getSemesterName() {
        return semesterName;
    }

    public void setSemesterName(String semesterName) {
        this.semesterName = semesterName;
    }

    public Timestamp getStartingDate() {
        return startingDate;
    }

    public void setStartingDate(Timestamp startingDate) {
        this.startingDate = startingDate;
    }

    public Timestamp getEndDate() {
        return endDate;
    }

    public void setEndDate(Timestamp endDate) {
        this.endDate = endDate;
    }

    // toString method for easy printing
    @Override
    public String toString() {
        return "Semester{" +
                "semesterId=" + semesterId +
                ", semesterName='" + semesterName + '\'' +
                ", startingDate=" + startingDate +
                ", endDate=" + endDate +
                '}';
    }
}
