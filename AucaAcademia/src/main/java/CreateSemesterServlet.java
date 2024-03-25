import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controllers.adminController; // Import the adminController class

@WebServlet("/createSemesterServlet")
public class CreateSemesterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String semesterName = request.getParameter("semesterName");
        String startingDateStr = request.getParameter("startingDate");
        String endDateStr = request.getParameter("endDate");

        // Convert date strings to Timestamp objects with nano precision
        Timestamp startingDate = Timestamp.valueOf(startingDateStr + " 00:00:00.000000000");
        Timestamp endDate = Timestamp.valueOf(endDateStr + " 00:00:00.000000000");

        // Generate UUID for semester_id
        UUID semesterId = UUID.randomUUID();

        // Insert the new semester into the database
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String dbUsername = "postgres";
            String dbPassword = "A$aprocky08";

            try (Connection conn = DriverManager.getConnection(url, dbUsername, dbPassword)) {
                String sql = "INSERT INTO semester (semester_id, semester_name, starting_date, end_date) " +
                             "VALUES (?, ?, ?, ?)";
                try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                    pstmt.setObject(1, semesterId); // Set UUID as object
                    pstmt.setString(2, semesterName);
                    pstmt.setTimestamp(3, startingDate);
                    pstmt.setTimestamp(4, endDate);
                    pstmt.executeUpdate();

                    // Redirect after successful creation
                    response.sendRedirect("index.jsp");

                    // Example usage: Delete a semester
                    String semesterNameToDelete = "First Semester";
                    boolean deleted = adminController.deleteSemester(semesterNameToDelete);
                    if (deleted) {
                        System.out.println("Semester deleted successfully!");
                    } else {
                        System.out.println("Error deleting semester.");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            // Handle database error
            response.getWriter().println("Error creating semester. Please try again.");
        }
    }
}
