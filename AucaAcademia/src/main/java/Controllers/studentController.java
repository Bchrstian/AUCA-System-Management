package Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.ServletException;

public class studentController {
    private static final String url = "jdbc:postgresql://localhost:5432/aucadatabase";
    private static final String username = "postgres";
    private static final String dbPassword = "A$aprocky08";

    public boolean registerStudent(String studentId, String semesterName, String departmentName) {
        try (Connection conn = DriverManager.getConnection(url, username, dbPassword)) {
            conn.setAutoCommit(false);

            // Check if student exists
            if (!checkStudentExistence(conn, studentId)) {
                conn.rollback();
                throw new ServletException("Student does not exist. Please register first.");
            }

            // Check if semester is valid
            if (!checkSemesterValidity(conn, semesterName)) {
                conn.rollback();
                throw new ServletException("Invalid semester. Please select a valid semester.");
            }

            // Check if department exists
            if (!checkDepartmentExistence(conn, departmentName)) {
                conn.rollback();
                throw new ServletException("Department does not exist. Please enter a valid department.");
            }

            // Generate registration details and insert into database
            UUID registrationId = UUID.randomUUID();
            String registrationCode = generateCode(conn);
            Timestamp registrationDate = new Timestamp(System.currentTimeMillis());

            String insertQuery = "INSERT INTO student_Registration (registration_id, registration_code, student_id, registration_date, semester_id, department_id) VALUES (?, ?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(insertQuery)) {
                stmt.setObject(1, registrationId);
                stmt.setString(2, registrationCode);
                stmt.setObject(3, UUID.fromString(studentId));
                stmt.setTimestamp(4, registrationDate);
                stmt.setObject(5, getSemesterId(conn, semesterName));
                stmt.setObject(6, getDepartmentId(conn, departmentName));

                stmt.executeUpdate();
            }

            conn.commit();
            return true;

        } catch (SQLException | ServletException e) {
            e.printStackTrace();
            return false;
        }
    }

    private boolean checkStudentExistence(Connection conn, String studentId) throws SQLException {
        String query = "SELECT student_id FROM student WHERE student_id = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setObject(1, UUID.fromString(studentId));
            ResultSet result = stmt.executeQuery();
            return result.next();
        }
    }

    private boolean checkSemesterValidity(Connection conn, String semesterName) throws SQLException {
        String query = "SELECT * FROM semester WHERE semester_name = ? AND starting_date <= CURRENT_DATE AND end_date >= CURRENT_DATE";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, semesterName);
            ResultSet result = stmt.executeQuery();
            return result.next();
        }
    }

    private boolean checkDepartmentExistence(Connection conn, String departmentName) throws SQLException {
        String query = "SELECT academic_id FROM academic_unit WHERE academic_name = ? AND type = 'department'";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, departmentName);
            ResultSet result = stmt.executeQuery();
            return result.next();
        }
    }

    private String generateCode(Connection conn) throws SQLException {
        // Your implementation to generate a unique registration code
        return "REG" + UUID.randomUUID().toString().split("-")[0];
    }

    private UUID getSemesterId(Connection conn, String semesterName) throws SQLException {
        String query = "SELECT semester_id FROM semester WHERE semester_name = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, semesterName);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                return UUID.fromString(result.getString("semester_id"));
            } else {
                throw new SQLException("Semester not found.");
            }
        }
    }

    private UUID getDepartmentId(Connection conn, String departmentName) throws SQLException {
        String query = "SELECT academic_id FROM academic_unit WHERE academic_name = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, departmentName);
            ResultSet result = stmt.executeQuery();
            if (result.next()) {
                return UUID.fromString(result.getString("academic_id"));
            } else {
                throw new SQLException("Department not found.");
            }
        }
    }
}
