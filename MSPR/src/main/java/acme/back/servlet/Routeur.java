package acme.back.servlet;

import java.io.IOException;

import acme.back.service.AuthentificationService;
import acme.front.AuthentificationBean;
import acme.util.BizException;
import acme.util.Utilitaire;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Authentification extends HttpServlet {
	
	private static final long serialVersionUID = 0L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		HttpSession session = (HttpSession)request.getSession();
		session.removeAttribute("erreur");
		String pageApresErreur = "/jsp/erreur.jsp";
		
		//On a besoin d'un tag unique pour être sur de passer dans le bon if 
		//C'est a cela que sert la ligne dans la jsp : <input name="connexion" type="submit" value="connexion"/>
		try {
			if ("connexion".equals(request.getParameter("connexion"))) {
				pageApresErreur = "/login.jsp";
				AuthentificationBean ab = new AuthentificationBean();
				//login
				ab.setLogin(request.getParameter("login"));
				
				//password que l'on hash (Cela devrait se faire dans la jsp mais je n'y arrive pas !)
				ab.setPassword(Utilitaire.getStringMD5(request.getParameter("password")));
				ab = AuthentificationService.getService().authenticate(ab);
				
				//Pour communiquer entre le serveur et le client on passe par la session qui est une hashmap (cle/valeur)
				//on choisit arbitrairement une cle (string et on lui associe un objet que l'on pourra récuperer dans la jsp)
				session.setAttribute("authentification", ab);
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/blanc.jsp").forward(request, response);			
			} else 
			//Je viens du menu deconnexion
			if ("menuDeconnexion".equals(request.getParameter("parametre"))) {
				pageApresErreur = "/login.jsp";
				if (session.getAttribute("login") == null) {
					getServletConfig().getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
					return;
				}
				/*
				String parent = request.getParameter("parent");
				if (parent.compareTo("null") == 0) { parent = null; }
				*/
				session.invalidate();
				getServletConfig().getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
			} else {
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/erreur.jsp").forward(request, response);
			}			
		}
		//En cas d'erreur on renseigne le message d'erreur dans la session sous la forme de string
		catch(BizException be) {
			try {
				be.printStackTrace();
				session.setAttribute("erreur", be.getMessage());
				getServletConfig().getServletContext().getRequestDispatcher(pageApresErreur).forward(request, response);
			} catch (Exception e) { e.printStackTrace(); }
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
}
