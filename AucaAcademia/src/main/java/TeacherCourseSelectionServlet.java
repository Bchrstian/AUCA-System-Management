import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TeacherCourseSelectionServlet")
public class TeacherCourseSelectionServlet extends HttpServlet {
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

            String teacherId = request.getParameter("teacher_id");
            String courseCode = request.getParameter("course_code");

            // Log the received parameters
            System.out.println("Received Teacher ID: " + teacherId);
            System.out.println("Received Course Code: " + courseCode);

            // Check for null or empty parameters
            if (teacherId == null || teacherId.isEmpty() || courseCode == null || courseCode.isEmpty()) {
                conn.rollback();
                throw new ServletException("Missing required parameters.");
            }

            // Check if the teacher exists
            if (!teacherExists(conn, teacherId)) {
                conn.rollback();
                throw new ServletException("Teacher does not exist.");
            }

            // Check if the course exists
            if (!courseExists(conn, courseCode)) {
                conn.rollback();
                throw new ServletException("Course does not exist.");
            }

            // Check for existing course assignments for the teacher (if needed)

            // Assign the course to the teacher
            assignCourseToTeacher(conn, teacherId, courseCode);

            conn.commit();
            conn.close();

            response.getWriter().println("Course assigned successfully!");

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred: " + e.getMessage());
        }
    }

    private boolean teacherExists(Connection conn, String teacherId) throws SQLException {
        // Query to check if the teacher exists in the database
        String checkTeacher = "SELECT teacher_id FROM teacher WHERE teacher_id = ?";
        PreparedStatement checkTeacherStmt = conn.prepareStatement(checkTeacher);
        checkTeacherStmt.setObject(1, UUID.fromString(teacherId));
        ResultSet teacherResult = checkTeacherStmt.executeQuery();
        return teacherResult.next(); // true if teacher exists, false otherwise
    }

    private boolean courseExists(Connection conn, String courseCode) throws SQLException {
        // Query to check if the course exists in the database based on course_code
        String checkCourse = "SELECT course_code FROM course WHERE course_code = ?";
        PreparedStatement checkCourseStmt = conn.prepareStatement(checkCourse);
        checkCourseStmt.setString(1, courseCode);
        ResultSet courseResult = checkCourseStmt.executeQuery();
        return courseResult.next(); // true if course exists, false otherwise
    }

    private void assignCourseToTeacher(Connection conn, String teacherId, String courseCode) throws SQLException {
        // Query the database to get the course ID based on the course code
        String courseIdQuery = "SELECT course_id FROM course WHERE course_code = ?";
        PreparedStatement courseIdStmt = conn.prepareStatement(courseIdQuery);
        courseIdStmt.setString(1, courseCode);
        ResultSet courseIdResult = courseIdStmt.executeQuery();

        if (courseIdResult.next()) {
            UUID courseId = (UUID) courseIdResult.getObject("course_id");

            // Update the database to assign the course to the teacher
            String assignCourse = "UPDATE teacher SET course_id = ? WHERE teacher_id = ?";
            PreparedStatement assignCourseStmt = conn.prepareStatement(assignCourse);
            assignCourseStmt.setObject(1, courseId);
            assignCourseStmt.setObject(2, UUID.fromString(teacherId));
            assignCourseStmt.executeUpdate();
        } else {
            throw new SQLException("Course not found for the given course code.");
        }
    }


}
