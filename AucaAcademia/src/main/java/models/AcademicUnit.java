package models;

import java.util.UUID;

public class AcademicUnit {
    private UUID academicId;
    private String academicCode;
    private String academicName;
    private String type;

    public AcademicUnit(UUID academicId, String academicCode, String academicName, String type) {
        this.academicId = academicId;
        this.academicCode = academicCode;
        this.academicName = academicName;
        this.type = type;
    }

    // Getters and setters
    public UUID getAcademicId() {
        return academicId;
    }

    public void setAcademicId(UUID academicId) {
        this.academicId = academicId;
    }

    public String getAcademicCode() {
        return academicCode;
    }

    public void setAcademicCode(String academicCode) {
        this.academicCode = academicCode;
    }

    public String getAcademicName() {
        return academicName;
    }

    public void setAcademicName(String academicName) {
        this.academicName = academicName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    // toString method for easy printing
    @Override
    public String toString() {
        return "AcademicUnit{" +
                "academicId=" + academicId +
                ", academicCode='" + academicCode + '\'' +
                ", academicName='" + academicName + '\'' +
                ", type='" + type + '\'' +
                '}';
    }
}
