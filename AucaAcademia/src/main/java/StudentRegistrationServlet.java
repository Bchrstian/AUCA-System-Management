import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/StudentRegistrationServlet")
public class StudentRegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve student ID from the form
        String studentId = request.getParameter("studentId");

        // Generate registration code
        String registrationCode = generateRegistrationCode();

        // Get current timestamp for registration date
        Timestamp registrationDate = new Timestamp(System.currentTimeMillis());

        // Database connection and insertion
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String username = "postgres";
            String dbPassword = "A$aprocky08"; // Renamed to dbPassword to avoid conflict
            Connection conn = DriverManager.getConnection(url, username, dbPassword);

            // Prepare statement for insertion
            String sql = "INSERT INTO studentRegistration (registration_id, registration_code, student_id, registration_date) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            // Generate UUID for registration ID
            UUID registrationId = UUID.randomUUID();

            // Set values to the prepared statement
            pstmt.setObject(1, registrationId);
            pstmt.setString(2, registrationCode);
            pstmt.setObject(3, UUID.fromString(studentId)); // Convert studentId to UUID
            pstmt.setTimestamp(4, registrationDate);

            // Execute the insert statement
            int rowsAffected = pstmt.executeUpdate();
            
            if (rowsAffected > 0) {
                response.getWriter().println("Registration successful!");
            } else {
                response.getWriter().println("Registration failed. Please try again.");
            }

            // Close connections
            pstmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }

    private String generateRegistrationCode() {
        // Get the current year
        int year = Calendar.getInstance().get(Calendar.YEAR);
        
        // Implement your logic to generate the registration code based on the year and a sequence number
        // For simplicity, you can use a static sequence number for now
        String sequenceNumber = "0001"; // Static sequence number
        
        // Concatenate the year and sequence number to form the registration code
        return "A" + year + sequenceNumber;
    }

}
