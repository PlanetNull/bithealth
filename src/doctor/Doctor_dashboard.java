package doctor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="Doctor_dashboard", urlPatterns={"/doctor/dashboard"})
public class Doctor_dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public Doctor_dashboard() {
        super();

    }
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/JSP/Doctor/dashboard.jsp").forward(request, response);
		return;
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

	

}
