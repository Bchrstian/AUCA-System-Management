package Controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class teacherController {
    public boolean teacherExists(Connection conn, String teacherId) throws SQLException {
        String checkTeacher = "SELECT teacher_id FROM teacher WHERE teacher_id = ?";
        try (PreparedStatement checkTeacherStmt = conn.prepareStatement(checkTeacher)) {
            checkTeacherStmt.setObject(1, UUID.fromString(teacherId));
            ResultSet teacherResult = checkTeacherStmt.executeQuery();
            return teacherResult.next(); // true if teacher exists, false otherwise
        }
    }

    public boolean courseExists(Connection conn, String courseCode) throws SQLException {
        String checkCourse = "SELECT course_code FROM course WHERE course_code = ?";
        try (PreparedStatement checkCourseStmt = conn.prepareStatement(checkCourse)) {
            checkCourseStmt.setString(1, courseCode);
            ResultSet courseResult = checkCourseStmt.executeQuery();
            return courseResult.next(); // true if course exists, false otherwise
        }
    }

    public void assignCourseToTeacher(Connection conn, String teacherId, String courseCode) throws SQLException {
        // Query the database to get the course ID based on the course code
        String courseIdQuery = "SELECT course_id FROM course WHERE course_code = ?";
        try (PreparedStatement courseIdStmt = conn.prepareStatement(courseIdQuery)) {
            courseIdStmt.setString(1, courseCode);
            ResultSet courseIdResult = courseIdStmt.executeQuery();

            if (courseIdResult.next()) {
                UUID courseId = (UUID) courseIdResult.getObject("course_id");

                // Update the database to assign the course to the teacher
                String assignCourse = "UPDATE teacher SET course_id = ? WHERE teacher_id = ?";
                try (PreparedStatement assignCourseStmt = conn.prepareStatement(assignCourse)) {
                    assignCourseStmt.setObject(1, courseId);
                    assignCourseStmt.setObject(2, UUID.fromString(teacherId));
                    assignCourseStmt.executeUpdate();
                }
            } else {
                throw new SQLException("Course not found for the given course code.");
            }
        }
    }
}
