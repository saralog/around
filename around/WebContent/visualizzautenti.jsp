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
int ID=list.get(i).getId();
%>
<br>
ID <%=ID %>
Nome <%=nome %>
Ruolo <%=ruolo %>
Data Iscrizione <%=data%>
<br>
<%} %>
</body>
</html>