<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.STutenti,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>elenco amici</title>
</head>
<body>
<% Db_STutenti db=new Db_STutenti();
ArrayList <STutenti> list=db.elencoIscritti();
for (int i=0; i<list.size() ; i++){
String nome=list.get(i).getNome();
String ruolo=list.get(i).getRuolo();
Date data=list.get(i).getGiornoP();
%>
<%=nome %>
<%=ruolo %>
<%=data%>

<%} %>
<form action="schedaUtente.jsp">
  Nome:<br>
  <input type="text" name="nome">
  <br>
  Ruolo<br>
  <input type="text" name="ruolo">
  <br>
 Giorno Partenza<br>
  <input type="text" name="giornoP">
  <br>
  <br>
 Luogo Partenza<br>
  <input type="text" name="luogoP">
  <br>
   <br>
 Luogo Destinazione<br>
  <input type="text" name="luogoD">
  <br>
   <br>
 commenti<br>
  <input type="text" name="commenti">
  <br>
 
  <input type="submit" value="Submit">
</form> 
</body>
</html>