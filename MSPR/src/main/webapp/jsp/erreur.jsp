<%@	page contentType="text/html; charset=iso-8859-1"
	language="java"
	import="seifried.front.bean.LangueBean"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style2 {
	color: #336600;
	font-family: Tahoma;
	font-size: 18px;
}
.style3 {
	font-family: Tahoma;
	font-size: 14px;
	color: #336600;
}
-->
</style>
<%	LangueBean lb = (LangueBean)request.getSession().getAttribute("lb"); %>
</head>
<body>
<div align="center">
  <table width="500" border="0">
    <tr>
      <th scope="col"><div align="center" id="1" class="style2"><%=lb.getLibelle("erreur", 1)%></div></th>
    </tr>
    <tr>
      <td height="149"><div align="center" id="2" class="style3"><%=lb.getLibelle("erreur", 2)%></div></td>
    </tr>
  </table>
</div>
</body>
</html>
