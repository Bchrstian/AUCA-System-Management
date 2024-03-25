package models;

import java.sql.Timestamp;
import java.util.UUID;

public class StudentRegistration {
    private UUID registrationId;
    private String registrationCode;
    private UUID studentId; // Foreign key to student table
    private Timestamp registrationDate;
    private String semesterId; // Added column
    private UUID departmentId; // Added column

    public StudentRegistration(UUID registrationId, String registrationCode, UUID studentId,
                               Timestamp registrationDate, String semesterId, UUID departmentId) {
        this.registrationId = registrationId;
        this.registrationCode = registrationCode;
        this.studentId = studentId;
        this.registrationDate = registrationDate;
        this.semesterId = semesterId;
        this.departmentId = departmentId;
    }

    // Getters and setters
    public UUID getRegistrationId() {
        return registrationId;
    }

    public void setRegistrationId(UUID registrationId) {
        this.registrationId = registrationId;
    }

    public String getRegistrationCode() {
        return registrationCode;
    }

    public void setRegistrationCode(String registrationCode) {
        this.registrationCode = registrationCode;
    }

    public UUID getStudentId() {
        return studentId;
    }

    public void setStudentId(UUID studentId) {
        this.studentId = studentId;
    }

    public Timestamp getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Timestamp registrationDate) {
        this.registrationDate = registrationDate;
    }

    public String getSemesterId() {
        return semesterId;
    }

    public void setSemesterId(String semesterId) {
        this.semesterId = semesterId;
    }

    public UUID getDepartmentId() {
        return departmentId;
    }

    public void setDepartmentId(UUID departmentId) {
        this.departmentId = departmentId;
    }

    // toString method for easy printing
    @Override
    public String toString() {
        return "StudentRegistration{" +
                "registrationId=" + registrationId +
                ", registrationCode='" + registrationCode + '\'' +
                ", studentId=" + studentId +
                ", registrationDate=" + registrationDate +
                ", semesterId='" + semesterId + '\'' +
                ", departmentId=" + departmentId +
                '}';
    }
}
