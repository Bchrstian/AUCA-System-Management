import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteSemesterServlet")
public class DeleteSemesterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String semesterName = request.getParameter("semesterName");
        
        try {
            Class.forName("org.postgresql.Driver");
            String url = "jdbc:postgresql://localhost:5432/aucadatabase";
            String username = "postgres";
            String dbPassword = "A$aprocky08";

            Connection connection = DriverManager.getConnection(url, username, dbPassword);

            String sql = "DELETE FROM semester WHERE semester_name = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, semesterName);

            int rowsDeleted = statement.executeUpdate();

            PrintWriter out = response.getWriter();
            if (rowsDeleted > 0) {
                out.println("<html><body><h1>Semester deleted successfully!</h1></body></html>");
            } else {
                out.println("<html><body><h1>No semester found with the given name.</h1></body></html>");
            }

            statement.close();
            connection.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            PrintWriter out = response.getWriter();
            out.println("<html><body><h1>Error deleting semester.</h1></body></html>");
        }
    }
}
