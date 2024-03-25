package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

public class adminController {
    private static final String url = "jdbc:postgresql://localhost:5432/aucadatabase";
    private static final String username = "postgres";
    private static final String dbPassword = "A$aprocky08";

    public static boolean deleteSemester(String semesterName) {
        try (Connection conn = DriverManager.getConnection(url, username, dbPassword)) {
            // Check if the semester exists
            if (!semesterExists(conn, semesterName)) {
                throw new SQLException("Semester does not exist.");
            }

            String sql = "DELETE FROM semester WHERE semester_name = ?";
            try (PreparedStatement statement = conn.prepareStatement(sql)) {
                statement.setString(1, semesterName);

                int rowsDeleted = statement.executeUpdate();
                return rowsDeleted > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean semesterExists(Connection conn, String semesterName) throws SQLException {
        String checkSemester = "SELECT semester_id FROM semester WHERE semester_name = ?";
        try (PreparedStatement checkSemesterStmt = conn.prepareStatement(checkSemester)) {
            checkSemesterStmt.setString(1, semesterName);
            ResultSet semesterResult = checkSemesterStmt.executeQuery();
            return semesterResult.next();
        }
    }

    public static void main(String[] args) {
        // Example usage: Delete a semester
        String semesterNameToDelete = "First Semester";
        boolean deleted = deleteSemester(semesterNameToDelete);
        if (deleted) {
            System.out.println("Semester deleted successfully!");
        } else {
            System.out.println("Error deleting semester.");
        }
    }
}
