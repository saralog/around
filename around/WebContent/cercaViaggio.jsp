<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STviaggi,connessione.STviaggi,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>elenco Viaggi</title>
</head>
<body>
<% 
Db_STviaggi db=new Db_STviaggi();
ArrayList <STviaggi> list=db.elencoIscritti();
java.text.DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
int IDUT=Integer.parseInt(request.getParameter("cerca"));

for (int i=0; i<list.size() ; i++){	
	int ID=list.get(i).getId();
	String luogoPartenza=list.get(i).getLuogoPartenza();
		if(ID==IDUT){
			int ID_viaggio=list.get(i).getId_v();	
			String nome=list.get(i).getNome();
			
			
%>
<br>
<%=nome %><br>
<%=luogoPartenza %>
<br>
<%}}
%>
<br>
xxxxxxxxxxxxxxxxxxxxxxxxx
<br>
<form action="cercaViaggio.jsp">
  cerca per id utente:<br>
  <select name ="cerca" id="cerca" >
  <%for (int i=0; i<list.size() ; i++){
	int ID=list.get(i).getId();

%>

<option value=<%=ID %>><%=ID %></option>

<%}
%>  
</select> 
  
  <br>
  <input type="submit" value="Submit">
</form>
 <form action="cercaViaggioLuogoPartenza.jsp">
  cerca per luogo di partenza:<br>
  <select name ="cerca" id="cerca" >
  <%for (int i=0; i<list.size() ; i++){
	  String luogoPartenza=list.get(i).getLuogoPartenza();

%>

<option value=<%=luogoPartenza %>><%=luogoPartenza %></option>

<%}
%>  
</select> 
  
  <br>
  <input type="submit" value="Submit">
</form>
 
</body>
</html>