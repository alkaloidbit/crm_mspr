package acme.back.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class GeneriqueServlet extends HttpServlet {
	
	private static final long serialVersionUID = 0L;
	protected String pageApresErreur = "/jsp/erreur.jsp";
	protected boolean redirige = false; 
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession session = request.getSession();
		session.removeAttribute("erreur");
		if (session.getAttribute("login") == null) {
			redirige = true;
			redirige("/login.jsp", request, response);
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
	
	protected void redirige(String page, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		getServletConfig().getServletContext().getRequestDispatcher(page).forward(request, response);
	}
}	
