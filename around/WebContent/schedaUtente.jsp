<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.STutenti,java.util.*,java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="stile.css">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Utente inserito</title>
</head>
<body style="text-align:center; text-valign:middle">
<%
java.text.DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
String nomeUT=request.getParameter("nome");
String ruoloUT=request.getParameter("ruolo");
Date giornoPUT=df.parse(request.getParameter("giornoP"));
String luogoPUT=request.getParameter("luogoP");
String luogoDUT=request.getParameter("luogoD");
String commentiUT=request.getParameter("commenti");
char[] charArray = commentiUT.toCharArray();


for(int i=0; i<commentiUT.length()-1; i++) {	
	
	if ("àòèéç'!?+".indexOf(charArray[i]) != -1){
		 String carattere=String.valueOf(charArray[i]); 
		 String sostituto='\\'+carattere;
		 commentiUT=commentiUT.replace(carattere,sostituto);
	   }
	} 

//int idNI=Integer.parseInt(request.getParameter("id"));

STutenti nuovoiscritto=new STutenti(0,nomeUT,ruoloUT,giornoPUT,luogoPUT,luogoDUT,commentiUT);
Db_STutenti.nuovoIscritto(nuovoiscritto);

%>
Ti sei iscritto con successo
<br>
<%
Db_STutenti db=new Db_STutenti();
ArrayList <STutenti> list=db.elencoIscritti();
int ID;
for (int i=0; i<list.size() ; i++){
	String nome=list.get(i).getNome();
	String ruolo=list.get(i).getRuolo();
	
	if (nomeUT.equals(nome) && ruoloUT.equals(ruolo)){
		
		ID=list.get(i).getId();
		%>
		<td  bgcolor="#3CBC8D" ><a href="InserisciViaggio.jsp?ID=<%=ID%>">° inserisci Viaggio.</a></td>
		<%

	
	}
	
}
%>
<table cellspacing="3" cellpadding="3" width="600">
	<tr>
			<td  bgcolor="#3CBC8D" ><a href="SingIn.jsp">° inserisci Viaggio.</a></td>	
		<td  bgcolor="#3CBC8D" ><a href="index.html">°home.</a></td>
		<td  bgcolor="#3CBC8D" ><a href="visualizzautenti.jsp">Lista Iscritti</a></td>
		
		
		
		</tr>
	</table>
</body>
</html>