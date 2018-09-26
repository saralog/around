<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.STutenti,connessione.Db_STviaggi,connessione.STviaggi,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inserisci Nuovo Viaggio</title>
</head>
<body>
<form action="schedaViaggio.jsp">
<% 

int ID=Integer.parseInt(request.getParameter("ID"));;
Db_STutenti db=new Db_STutenti();
ArrayList <STutenti> list=db.elencoIscritti();
String indirizzoquery;
int IDUT;
String nome;
String ruolo;
Date giornoP;
String luogoP;
String luogoD;
String commento;
String indirioquery;
for (int i=0; i<list.size() ; i++){
	IDUT=list.get(i).getId();
	
	if(IDUT==ID){
		nome=list.get(i).getNome();
		ruolo=list.get(i).getRuolo();
		giornoP=list.get(i).getGiornoP();
		luogoP=list.get(i).getLuogoP();
		luogoD=list.get(i).getLuogoD();
		commento=list.get(i).getCommento();
%>
<%=ID%><%=nome%><%=ruolo%><br>
 <input type="hidden" name="ID" value=<%=ID%>><%=ID%><br>
 
 <input type="hidden" name="nome" value=<%=nome%>><br>
 
 <input type="hidden" name="ruolo" value=<%=ruolo%>><br>
 
<%
	}
}

%>
<br>

 Giorno Partenza<br>
  <input type="text" name="giornoPartenza">
  <br>
  <br>
  <br>
   <br>
 Luogo partenza<br>
  <input type="text" name="luogoPartenza">
  <br>
   <br>
 Luogoarrivo<br>
  <input type="text" name="luogoArrivo">
  <br>
   <br>
 astronave<br>
  <input type="text" name="astronave">
  <br>
 modus<br>
  <input type="text" name="modus">
  <br>
  <input type="submit" value="Submit">
</form> 
</body>
</html>