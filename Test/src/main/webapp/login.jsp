<%@ page contentType="text/html; charset=iso-8859-1"
	language="java" 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login</title>
<style type="text/css">
<!--
body {
	background-image: url(image/menu.gif);
	background-repeat: no-repeat;
}
.style18 {font-family: Tahoma; font-size: 10pt; color: #336600; }
-->
</style>
<script language="javascript" src="./jsp/stocks.js" type="text/javascript"></script>
<script language="javascript">
function unloadMenu() { 
	parent.frames['leftFrame'].location = "";
	return true;
}
</script>
</head>
<body onload="unloadMenu()">
	<table width="200" border="0">
  		<tr><td>&nbsp;</td></tr>
  		<tr><td>&nbsp;</td></tr>
  		<tr><td align="center"><img src="image/logo.gif"/></td></tr>
	</table>
	<div align="center">
  		<p><font color="#006600" size="5" id="1" face="Tahoma"><b>Login</b></font></p>
  		<p>&nbsp;</p>
  		<p>&nbsp;</p>
	</div>
	<FORM method=post action="./Routeur">
	<table align="center" width="172" border="0">
  		<tr><td align="center"><input type="text" name="user" value="User"/></td></tr>
  		<tr><td align="center"><input type="password" name="password" value="Password"/></td></tr>
  		<tr><td align="center">
			<input name="connection" type="submit" value="Connection"/>
			<input name="cancel" type="reset" value="Cancel"/>
		</td></tr>
	</table>
	</FORM>
</body>
</html>

