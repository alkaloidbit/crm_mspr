package acme.front;

import java.sql.Timestamp;

public class MenuBean extends AbstractBean {
	
	private static final long serialVersionUID = 0L;
	
	private String nom;
	private String active = "";
	private String activeDown = "";
	private String nomParent;
	private Timestamp stimestamp;
	
	public MenuBean() {}
	
	public String getNom () { return nom; }
	public String getActive () { return active; }
	public String getActiveDown () { return activeDown; }
	public String getNomParent () { return nomParent; }
	public Timestamp getStimestamp () { return stimestamp; }
	
	public void setNom (String nom) {	this.nom = nom; }
	public void setActive (String active) { this.active = active; }
	public void setActiveDown (String activeDown) { this.activeDown = activeDown; }
	public void setNomParent (String nomParent) { this.nomParent = nomParent; }
	public void setStimestamp (Timestamp stimestamp) { this.stimestamp = stimestamp;}
	
	public void reset() {
		active = "";
		activeDown = "";
	}
	
	public void setClass() {
		if (nomParent == null) {
			active = "active";
			activeDown = "active down";
		} else { 
			active = "active";
			activeDown = "";
		}
	}
	
	public void init(String nom, String nomParent) {
		this.nom = nom;
		this.active = "";
		this.activeDown = "";
		this.nomParent = nomParent;
	}
	
	public Object getClone() throws CloneNotSupportedException { return this.clone(); } 
	
	public String toString() {
		String message = "";
		message = message + "\n" +
				  "nom : " + nom + "\n" +
				  "active : " + active + "\n" +
				  "activeDown : " + activeDown + "\n" +
				  "nomParent : " + nomParent + "\n" +
				  "stimestamp : " + stimestamp + "\n" + 
				  super.toString();
		return message;
	}
}
