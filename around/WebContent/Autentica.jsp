<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.STutenti,connessione.Db_STviaggi,connessione.STviaggi,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Autenticazione</title>
</head>
<body>

<br>
<% 
java.text.DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
String nome=request.getParameter("nome");
String ruolo=request.getParameter("ruolo");
int ID=Integer.parseInt(request.getParameter("ID"));
Db_STutenti db=new Db_STutenti();
ArrayList <STutenti> list=db.elencoIscritti();
int IDUT;
String nomeUT;
String ruoloUT;
Boolean accesso=false;

for (int i=0; i<list.size() ; i++){
	IDUT=list.get(i).getId();
	nomeUT=list.get(i).getNome();
	ruoloUT=list.get(i).getRuolo();
	if(IDUT==ID && nomeUT.equals(nome) && ruoloUT.equals(ruolo) ){
		 accesso=true;
			
%>
<%=ID%>
 

<%
	} 
}

%>
<%
if (accesso){
	%>
	Accesso: <%=accesso %><br>
	<a href='InserisciViaggio.jsp?ID=<%=ID%>'>inserisci viaggio</a>
	<%
	
} else{%>
<br>
Accesso: <%=accesso %> 
<%}
%>
</body>
</html>