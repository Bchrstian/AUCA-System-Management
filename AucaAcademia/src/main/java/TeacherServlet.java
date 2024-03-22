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

@WebServlet("/TeacherServlet")
public class TeacherServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("txtFirstName");
        String lastName = request.getParameter("txtLastName");
        String qualification = request.getParameter("txtQualification");

        // Generate a UUID string for the ID column
        String id = UUID.randomUUID().toString();

        // Store the teacher data in the database
        storeTeacherInDatabase(id, firstName, lastName, qualification);
        
        // Redirect to a success page or display a success message
        response.sendRedirect("index.jsp");
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
}
