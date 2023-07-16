package acme.back.servlet;

import java.io.IOException;

import acme.back.service.AuthentificationService;
import acme.back.service.CommandeService;
import acme.front.AuthentificationBean;
import acme.front.CommandeBean;
import acme.util.BizException;
import acme.util.Utilitaire;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class Commande extends HttpServlet {
	
	private static final long serialVersionUID = 0L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		HttpSession session = (HttpSession)request.getSession();
		session.removeAttribute("erreur");
		String pageApresErreur = "/jsp/erreur.jsp";
		
		try {
			if ("Rechercher".equals(request.getParameter("rechercher")))  {
				System.out.println("Je passe");
				CommandeBean cb = (CommandeBean)session.getAttribute("cb");
				//idCommande
				String d = (String)request.getParameter("idCommande");
				if (d == null || d == "") { cb.setIdCommande(0); }
				else { cb.setIdCommande(Integer.parseInt(d)); }
				//Client
				d = (String)request.getParameter("nom");
				if (d == null || d == "") { cb.setNomClient("%"); }
				else { cb.setNomClient(d); }
				//dateCommande
				d = (String)request.getParameter("dateCommande");
				if (d != null && d != "") { cb.setDateCommande(Utilitaire.getDateAmericaine(d)); }
				else { cb.setDateCommande(null); }
				session.setAttribute("cb", cb);
				System.out.println("cb="+cb);
				CommandeService.getService().search(cb);
			} else 
			//Je viens du menu commande
			if ("menuCommande".equals(request.getParameter("parametre"))) {
				System.out.println("Menucommande");
				session.setAttribute("commandes", CommandeService.getService().getAllCommandes());
				session.setAttribute("cb", new CommandeBean());
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/commande.jsp").forward(request, response);
			} else {
				getServletConfig().getServletContext().getRequestDispatcher("/jsp/erreur.jsp").forward(request, response);
			}			
		}
		catch(BizException be) {
			try {
				be.printStackTrace();
				//En cas d'erreur on renseigne le message d'erreur dans la session sous forme de string
				session.setAttribute("erreur", be.getMessage());
				getServletConfig().getServletContext().getRequestDispatcher(pageApresErreur).forward(request, response);
			} catch (Exception e) { e.printStackTrace(); }
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
}
