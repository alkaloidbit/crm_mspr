<%@ page contentType="text/html; charset=iso-8859-1"
		 language="java"
		 import="java.util.HashMap, acme.front.MenuBean"
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Menu</title>
<style type="text/css">
<!--
body,td,th {
	font-family: Tahoma;
	font-size: 11pt;
	color: #336600;
}
body {
	background-image: url(image/menu.gif);
	background-repeat: no-repeat;
}
/**
 * Version
 */
div#version {
	font-family: Tahoma;
	font-size: 7pt;
	color: #336600;
	height:17px;
	position:absolute;
	left: 15px;
	top: 743px;
	width: 143px;
}

a{text-decoration: none;}
a.active{color: #339900;}
a.order {color: #339900;}

/**
 *NAVIGATION
 */ 
#navi{
  float: left;
  clear: left;
  border-right: none;
  width: 146px;
  padding-top: 0px;
  height: 356px;
}
#navi li a{
  display: block;
  height: 10px;
  padding-top: 10px;
  text-transform: none;
}
#navi li a.active{ background: none; }
#navi li a.down{
  background: none;
  padding-left: 0px;
  height: 5px
}
#navi li a:hover{
  color: #339900;
}
#navi li:hover ul{
  display: block;
}

/* 2te Ebene */
#navi li ul{
  margin-left: -20px;
  margin-bottom: 5px;
  margin-top: 10px;
  display: none;
}
#navi li.active ul{
  display: block;
  margin-top: 10px;
}
#navi li ul a{
  padding-top: 1px;
  height: auto;
}
#navi li ul a.active{background-position: 0px 6px;}
-->
</style>
<%
	String msg = (String)request.getSession().getAttribute("erreur");
	HashMap mb = (HashMap)request.getSession().getAttribute("mb");
%>

<script language="javascript">
	function erreur() {	if ("<%=msg%>" != "null" && "<%=msg%>" != "") { alert("<%=msg%>"); }}
</script>
</head>
<body link="#336600" vlink="#336600" alink="#339900">
<table width="200" border="0">
  <tr><td>&nbsp;</td></tr>
  <tr><td>&nbsp;</td></tr>
  <tr><td align="center"><img src="image/logo.gif"/></td></tr>
</table>  
	<ul id="navi"> 
		<li class="<%=((MenuBean)mb.get("menuStock")).getActive()%>"><a href="../Stock?parametre=menuStock&parent=null" title="<%=lb.getLibelle("stock", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuStock")).getActiveDown()%>"><%=lb.getLibelle("stock", 1)%></a>
			<ul>
				<li><a href="../Stock?parametre=menuStock&parent=menuStock" title="<%=lb.getLibelle("stock", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuStockf")).getActive()%>"><%=lb.getLibelle("stock", 1)%></a></li>
				<li><a href="../Management?parametre=menuManagement&parent=menuStock" title="<%=lb.getLibelle("management", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuManagement")).getActive()%>"><%=lb.getLibelle("management", 1)%></a></li>
				<li><a href="../Mouvement?parametre=menuMouvement&parent=menuStock" title="<%=lb.getLibelle("mouvement", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuMouvement")).getActive()%>"><%=lb.getLibelle("mouvement", 1)%></a></li>
				<li><a href="../Inventaire?parametre=menuInventaire&parent=menuStock" title="<%=lb.getLibelle("inventaire", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuInventaire")).getActive()%>"><%=lb.getLibelle("inventaire", 1)%></a></li>
				<li><a href="../Statistiques?parametre=menuStatistiques&parent=menuStock" title="<%=lb.getLibelle("statistiques", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuStatistiques")).getActive()%>"><%=lb.getLibelle("statistiques", 1)%></a></li>
			</ul>
		</li>
		<li class="<%=((MenuBean)mb.get("menuArticle")).getActive()%>"><a href="../Article?parametre=menuArticle&parent=null" title="<%=lb.getLibelle("article", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuArticle")).getActiveDown()%>"><%=lb.getLibelle("article", 1)%></a> 
			<ul> 
				<li><a href="../Article?parametre=menuArticle&parent=menuArticle" title="<%=lb.getLibelle("article", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuArticlef")).getActive()%>"><%=lb.getLibelle("article", 1)%></a></li>
				<li><a href="../Liste?parametre=menuListe&parent=menuArticle" title="<%=lb.getLibelle("liste", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuListe")).getActive()%>"><%=lb.getLibelle("liste", 1)%></a></li>
			</ul>
		</li> 
		<li class="<%=((MenuBean)mb.get("menuEntree")).getActive()%>"><a href="../Entree?parametre=menuEntree&parent=null" title="<%=lb.getLibelle("entree", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuEntree")).getActiveDown()%>"><%=lb.getLibelle("entree", 1)%></a>
			<ul>
				<li><a href="../Entree?parametre=menuEntree&parent=menuEntree" title="<%=lb.getLibelle("entree", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuEntreef")).getActive()%>"><%=lb.getLibelle("entree", 1)%></a></li> 
			</ul>
		</li> 
		<li class="<%=((MenuBean)mb.get("menuProduction")).getActive()%>"><a href="../Production?parametre=menuProduction&parent=null" title="<%=lb.getLibelle("production", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuProduction")).getActiveDown()%>"><%=lb.getLibelle("production", 1)%></a>
			<ul>
				<li><a href="../Production?parametre=menuProduction&parent=menuProduction" title="<%=lb.getLibelle("production", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuProductionf")).getActive()%>"><%=lb.getLibelle("production", 1)%></a></li>
				<li><a href="../Simulation?parametre=menuSimulation&parent=menuProduction" title="<%=lb.getLibelle("simuArt", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuSimulation")).getActive()%>"><%=lb.getLibelle("simuArt", 1)%></a></li> 
				<li><a href="../Simulation?parametre=menuSimulationC&parent=menuProduction" title="<%=lb.getLibelle("simuCom", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuSimulationC")).getActive()%>"><%=lb.getLibelle("simuCom", 1)%></a></li>
				<li><a href="../Csm?parametre=menuCsm&parent=menuProduction" title="<%=lb.getLibelle("csm7100", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuCsm")).getActive()%>"><%=lb.getLibelle("csm7100", 1)%></a></li>  
			</ul>
		</li>
		<li class="<%=((MenuBean)mb.get("menuSortie")).getActive()%>"><a href="../Sortie?parametre=menuSortie&parent=null" title="<%=lb.getLibelle("sortie", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuSortie")).getActiveDown()%>"><%=lb.getLibelle("sortie", 1)%></a>
			<ul> 
				<li><a href="../Sortie?parametre=menuSortie&parent=menuSortie" title="<%=lb.getLibelle("sortie", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuSortief")).getActive()%>"><%=lb.getLibelle("sortie", 1)%></a></li>
				<li><a href="../Perte?parametre=menuPerte&parent=menuSortie" title="<%=lb.getLibelle("perte", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuPerte")).getActive()%>"><%=lb.getLibelle("perte", 1)%></a></li> 
			</ul>
		</li>   
		<li class="<%=((MenuBean)mb.get("menuTracabilite")).getActive()%>"><a href="../Tracabilite?parametre=menuTracabilite&parent=null" title="<%=lb.getLibelle("tracabilite", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuTracabilite")).getActiveDown()%>"><%=lb.getLibelle("tracabilite", 1)%></a>
			<ul>
				<li><a href="../Tracabilite?parametre=menuTracabilite&parent=menuTracabilite" title="<%=lb.getLibelle("tracabilite", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuTracabilitef")).getActive()%>"><%=lb.getLibelle("tracabilite", 1)%></a></li>
			</ul>
		</li>
		<li class="<%=((MenuBean)mb.get("menuPartenaire")).getActive()%>"><a href="../Partenaire?parametre=menuPartenaire&parent=null" title="<%=lb.getLibelle("partenaire", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuPartenaire")).getActiveDown()%>"><%=lb.getLibelle("partenaire", 1)%></a>
			<ul>
				<li><a href="../Partenaire?parametre=menuPartenaire&parent=menuPartenaire" title="<%=lb.getLibelle("partenaire", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuPartenairef")).getActive()%>"><%=lb.getLibelle("partenaire", 1)%></a></li>
				<li><a href="../ArticleFournisseur?parametre=menuArticleFour&parent=menuPartenaire" title="<%=lb.getLibelle("articleFour", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuArticleFour")).getActive()%>"><%=lb.getLibelle("articleFour", 1)%></a></li>
			</ul>
		</li>
		<li class="<%=((MenuBean)mb.get("menuCommande")).getActive()%>"><a href="../CommandeAuto?parametre=menuCommande&parent=null" title="<%=lb.getLibelle("commande", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuCommande")).getActiveDown()%>"><%=lb.getLibelle("commande", 1)%></a>
			<ul>
				<li><a href="../CommandeAuto?parametre=menuCommande&parent=menuCommande" title="<%=lb.getLibelle("auto", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuCommandef")).getActive()%>"><%=lb.getLibelle("auto", 1)%></a></li>
				<li><a href="../CommandeFour?parametre=menuFournisseur&parent=menuCommande" title="<%=lb.getLibelle("fournisseur", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuFournisseur")).getActive()%>"><%=lb.getLibelle("fournisseur", 1)%></a></li>
				<li><a href="../CommandeClient?parametre=menuClient&parent=menuCommande" title="<%=lb.getLibelle("client", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuClient")).getActive()%>"><%=lb.getLibelle("client", 1)%></a></li>
			</ul>
		</li>
		<li class="<%=((MenuBean)mb.get("menuParametre")).getActive()%>"><a href="../Parametre?parametre=menuParametre&parent=null" title="<%=lb.getLibelle("parametre", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuParametre")).getActiveDown()%>"><%=lb.getLibelle("parametre", 1)%></a>
			<ul>
				<li><a href="../Parametre?parametre=menuParametre&parent=menuParametre" title="<%=lb.getLibelle("parametre", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuParametref")).getActive()%>"><%=lb.getLibelle("parametre", 1)%></a></li>
	  		</ul> 
		</li>
		<li class="<%=((MenuBean)mb.get("menuMotp")).getActive()%>"><a href="../Routeur?parametre=menuMotp&parent=null" title="<%=lb.getLibelle("motp", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuMotp")).getActiveDown()%>"><%=lb.getLibelle("motp", 1)%></a>
			<ul>
				<li><a href="../Routeur?parametre=menuMotp&parent=menuMotp" title="<%=lb.getLibelle("motp", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuMotpf")).getActive()%>"><%=lb.getLibelle("motp", 1)%></a></li>
	  		</ul> 
		</li>
		<li class="<%=((MenuBean)mb.get("menuDeconnexion")).getActive()%>"><a href="../Routeur?parametre=menuDeconnexion&parent=null" title="<%=lb.getLibelle("routeur", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuDeconnexion")).getActiveDown()%>"><%=lb.getLibelle("routeur", 1)%></a>
			<ul>
				<li><a href="../Routeur?parametre=menuDeconnexion&parent=menuDeconnexion" title="<%=lb.getLibelle("routeur", 1)%>" target="mainFrame" class="<%=((MenuBean)mb.get("menuDeconnexionf")).getActive()%>"><%=lb.getLibelle("routeur", 1)%></a></li>
	  		</ul> 
		</li>
	</ul>
	<div id="version">V. <%=version.getValeur()%></div> 
</body>
</html>
