package acme.front;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class CommandeBean extends AbstractBean {
	
	private int idCommande;
	private String codeClient = "";
	private String nomClient="";
	private Date dateCommande;
	private double montant;
	private ArrayList<DetailCommandeBean> al = new  ArrayList<DetailCommandeBean>();
	private Timestamp stimestamp;
	
	public CommandeBean() {}

	public int getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}

	public String getCodeClient() {
		return codeClient;
	}

	public void setCodeClient(String codeClient) {
		this.codeClient = codeClient;
	}
	
	public String getNomClient() {
		return nomClient;
	}

	public void setNomClient(String nomClient) {
		this.nomClient = nomClient;
	}

	public Date getDateCommande() {
		return dateCommande;
	}

	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}
	
	public double getMontant() {
		for (DetailCommandeBean dcb : al) 
			montant = montant + dcb.getMontant();
		return montant;
	}

	public void setMontant(double montant) {
		this.montant = montant;
	}

	public ArrayList<DetailCommandeBean> getAl() {
		return al;
	}

	public void setAl(ArrayList<DetailCommandeBean> al) {
		this.al = al;
	}

	public Timestamp getStimestamp() {
		return stimestamp;
	}

	public void setStimestamp(Timestamp stimestamp) {
		this.stimestamp = stimestamp;
	}

	@Override
	public String toString() {
		return "CommandeBean [idCommande=" + idCommande + ", codeClient=" + codeClient + ", nomClient=" + nomClient
				+ ", dateCommande=" + dateCommande + ", montant=" + montant + ", al=" + al + ", stimestamp="
				+ stimestamp + "]";
	}
	
}
