import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("txtEmail");
        String password = request.getParameter("txtPswd1");
        String role = request.getParameter("ddlRole");

        // Validate the password
        if (!isValidPassword(password)) {
            // Redirect back to the signup page with an error message
            response.sendRedirect("signup.jsp?error=password");
            return;
        }

        // Generate a UUID string for the ID columns
        String id = UUID.randomUUID().toString();
        String teacherId = UUID.randomUUID().toString();
        String studentId = UUID.randomUUID().toString();

        // Store the user data in the database
        storeUserInDatabase(id, email, password, role);
        
        // Store teacher or student data based on role
        if (role.equals("teacher")) {
            String firstName = request.getParameter("txtFirstName");
            String lastName = request.getParameter("txtLastName");
            String qualification = request.getParameter("txtQualification");
            storeTeacherInDatabase(teacherId, firstName, lastName, qualification);
        } else if (role.equals("student")) {
            String firstName = request.getParameter("stutxtFirstName");
            String lastName = request.getParameter("stutxtLastName");
            String dateOfBirth = request.getParameter("txtDOB");
            storeStudentInDatabase(studentId, firstName, lastName, dateOfBirth);
        }
        
        // Redirect to a success page or display a success message
        response.sendRedirect("studashboard.jsp");
    }

    private boolean isValidPassword(String password) {
        // Password must be at least 8 characters long and include both letters and numbers
        return password != null && password.length() >= 8 && password.matches(".*[a-zA-Z].*") && password.matches(".*\\d.*");
    }

    private void storeUserInDatabase(String id, String email, String password, String role) {
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String username = "postgres";
            String dbPassword = "A$aprocky08"; // Renamed to dbPassword to avoid conflict
            Connection conn = DriverManager.getConnection(url, username, dbPassword);

            String sql = "INSERT INTO users (id, email, password, role) VALUES (CAST(? AS UUID), ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, email);
            pstmt.setString(3, password);
            pstmt.setString(4, role);

            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeTeacherInDatabase(String id, String firstName, String lastName, String qualification) {
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String username = "postgres";
            String dbPassword = "A$aprocky08"; // Renamed to dbPassword to avoid conflict
            Connection conn = DriverManager.getConnection(url, username, dbPassword);

            String sql = "INSERT INTO teacher (teacher_id, first_name, last_name, qualification) VALUES (CAST(? AS UUID), ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, firstName);
            pstmt.setString(3, lastName);
            pstmt.setString(4, qualification);

            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    private void storeStudentInDatabase(String id, String Fname, String Lname, String dateOfBirth) {
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String username = "postgres";
            String dbPassword = "A$aprocky08"; // Renamed to dbPassword to avoid conflict
            Connection conn = DriverManager.getConnection(url, username, dbPassword);

            String sql = "INSERT INTO student (student_id, first_name, last_name, date_of_birth) VALUES (CAST(? AS UUID), ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, Fname);
            pstmt.setString(3, Lname);
            pstmt.setString(4, dateOfBirth);

            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

}
