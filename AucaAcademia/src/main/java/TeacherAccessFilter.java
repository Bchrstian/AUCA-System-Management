import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/Teacher/*")
public class TeacherAccessFilter implements Filter {

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

        // List of allowed pages for teachers
        String[] allowedPages = {
                "/Teacher/media.jsp",
                "/Teacher/research.jsp",
                "/Teacher/lecture.jsp",
                "/Teacher/notFound.jsp",
                "/Teacher/ErrorHandling",
                "/Teacher/index.jsp"
        };

        // Check if the requested page is allowed for teachers
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
            httpResponse.getWriter().write("Error: Teacher not allowed to access this page.");
        }
    }

    @Override
    public void destroy() {
        // Cleanup code goes here, if needed
    }
}
