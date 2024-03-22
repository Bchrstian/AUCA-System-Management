import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentRegistrationServlet")
public class StudentRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String username = "postgres";
            String dbPassword = "A$aprocky08";

            Connection conn = DriverManager.getConnection(url, username, dbPassword);
            conn.setAutoCommit(false);

            String studentId = request.getParameter("student_id");
            String semesterName = request.getParameter("semester_id");
            String departmentName = request.getParameter("department_name");

            System.out.println("Received parameters - student_id: " + studentId + ", semester_id: " + semesterName + ", department_name: " + departmentName);

            if (studentId == null || semesterName == null || departmentName == null) {
                conn.rollback();
                throw new ServletException("Missing required parameters.");
            }

            // Check if the student exists
            String checkStudent = "SELECT student_id FROM student WHERE student_id = ?";
            PreparedStatement checkStudentStmt = conn.prepareStatement(checkStudent);
            checkStudentStmt.setObject(1, UUID.fromString(studentId));
            ResultSet studentResult = checkStudentStmt.executeQuery();

            if (!studentResult.next()) {
                conn.rollback();
                throw new ServletException("Student does not exist. Please register first.");
            }

            // Check if the semester exists and is valid
            String checkSemester= "SELECT * FROM semester WHERE semester_name = ? AND starting_date <= CURRENT_DATE AND end_date >= CURRENT_DATE";
            PreparedStatement checkSemesterStmt = conn.prepareStatement(checkSemester);
            checkSemesterStmt.setString(1, semesterName);
            ResultSet semesterResult = checkSemesterStmt.executeQuery();

            if (!semesterResult.next()) {
                conn.rollback();
                throw new ServletException("Invalid semester. Please select a valid semester.");
            }

            // Check if the department exists
            String checkDepartment = "SELECT academic_id FROM academic_unit WHERE academic_name = ? AND type = 'department'";
            PreparedStatement checkDepartmentStmt = conn.prepareStatement(checkDepartment);
            checkDepartmentStmt.setString(1, departmentName);
            ResultSet departmentResult = checkDepartmentStmt.executeQuery();

            if (!departmentResult.next()) {
                conn.rollback();
                throw new ServletException("Department does not exist. Please enter a valid department.");
            }

            // Generate registration_id and registration_code
            UUID registrationId = UUID.randomUUID();
            String registrationCode = generateCode(conn);

            // Generate registration_date
            Timestamp registrationDate = new Timestamp(System.currentTimeMillis());

            // Insert into studentRegistration table
            String insertStudentRegistration = "INSERT INTO student_Registration (registration_id, registration_code, student_id, registration_date, semester_id, department_id) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement insertStudentRegistrationStmt = conn.prepareStatement(insertStudentRegistration);
            insertStudentRegistrationStmt.setObject(1, registrationId);
            insertStudentRegistrationStmt.setString(2, registrationCode);
            insertStudentRegistrationStmt.setObject(3, UUID.fromString(studentId));
            insertStudentRegistrationStmt.setTimestamp(4, registrationDate);
            insertStudentRegistrationStmt.setObject(5, UUID.fromString(semesterResult.getString("semester_id")));
            insertStudentRegistrationStmt.setObject(6, UUID.fromString(departmentResult.getString("academic_id")));

            insertStudentRegistrationStmt.executeUpdate();

            conn.commit();
            conn.close();

            response.getWriter().println("Registration successful!");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }

    private String generateCode(Connection conn) throws SQLException {
        // You need to implement this method to generate a unique registration code.
        // The following line is just an example, you should replace it with your own logic.
        String code = "REG" + UUID.randomUUID().toString().split("-")[0];

        // Check if the generated code already exists
        String checkCode = "SELECT * FROM student_Registration WHERE registration_code = ?";
        PreparedStatement checkCodeStmt = conn.prepareStatement(checkCode);
        checkCodeStmt.setString(1, code);
        ResultSet checkCodeResult = checkCodeStmt.executeQuery();

        if (checkCodeResult.next()) {
            // If the code already exists, generate a new one
            return generateCode(conn);
        }

        return code;
    }
}