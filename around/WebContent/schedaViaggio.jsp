<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.Db_STviaggi,connessione.STutenti,connessione.STviaggi,java.util.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stile.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invio conferma viaggio inserito</title>
</head>
<body style="text-align:center; text-valign:middle">
<%
java.text.DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

String nome=request.getParameter("nome");
String ruolo=request.getParameter("ruolo");
Date giornoPartenza=df.parse(request.getParameter("giornoPartenza"));
String luogoArrivo=request.getParameter("luogoArrivo");
String luogoPartenza=request.getParameter("luogoPartenza");
String astronave=request.getParameter("astronave");
String modus=request.getParameter("modus");


int idNI=Integer.parseInt(request.getParameter("ID"));


STviaggi nuovoviaggio=new STviaggi(0,idNI,nome,ruolo,giornoPartenza,luogoArrivo,luogoPartenza,astronave,modus);
Db_STviaggi.nuovoViaggio(nuovoviaggio);
String astronaveob=nuovoviaggio.getAstronave();

%>
	<font face="courier" size="100px">
	<%=idNI %>
		<%=nuovoviaggio %>
	<%=astronaveob %>
	</font>
	<br>
<br>
<br>
<br>
<table cellspacing="3" cellpadding="3" width="600">
	<tr>
		<td  bgcolor="#3CBC8D" ><form action="cercaViaggio.jsp">
  cerca altri viaggi inseriti  per id utente:<br>
  <select name ="cerca" id="cerca" >
  <%
  Db_STviaggi db=new Db_STviaggi();
  ArrayList <STviaggi> list=db.elencoIscritti();
  for (int i=0; i<list.size() ; i++){
	int ID=list.get(i).getId();

%>

<option value=<%=ID %>><%=ID %></option>

<%}
%>  
</select> 
  
  <br>
  <input type="submit" value="Submit">
</form></td>
		<td  bgcolor="#3CBC8D" ><a href="elencoIP.jsp">Lista Iscritti</a></td>
		
		
		
		</tr>
	</table>
</body>
</html>