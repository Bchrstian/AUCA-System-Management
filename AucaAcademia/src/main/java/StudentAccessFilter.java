import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/Student/*")
public class StudentAccessFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // Initialization code goes here, if needed
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        // Get the requested page URL
        String requestUrl = httpRequest.getRequestURI();

        // List of allowed pages for students
        String[] allowedPages = {
                "/Student/studashboard.jsp",
                "/Student/sundergraduate.jsp",
                "/Student/academics.jsp",
                "/Student/apply.jsp",
                "/Student/onlineRegistration.jsp",
                "/Student/index.jsp",
                "/Student/notFound.jsp",
                "/Student/StudentRegistrationServlet",
                "/Student/ErrorHandling"
        };

        // Check if the requested page is allowed for students
        boolean isAllowed = false;
        for (String allowedPage : allowedPages) {
            if (requestUrl.endsWith(allowedPage)) {
                isAllowed = true;
                break;
            }
        }

        if (isAllowed) {
            // If the page is allowed, continue with the request
            chain.doFilter(request, response);
        } else {
            // If the page is not allowed, display an error message
            httpResponse.getWriter().write("Error: Student not allowed to access this page.");
        }
    }

    @Override
    public void destroy() {
        // Cleanup code goes here, if needed
    }
}
