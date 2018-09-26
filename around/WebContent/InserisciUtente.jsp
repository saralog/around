<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.STutenti,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>form inserimento nuovo astronauta</title>
</head>
<body>
<form action="schedaUtente.jsp">
  Nome:<br>
  <input type="text" name="nome">
  <br>
  Ruolo<br>
  <input type="radio" name="ruolo" value="Capitano"> Capitano<br>
  <input type="radio" name="ruolo" value="Passeggero"> Passeggero<br>
  <input type="radio" name="ruolo" value="other"> Other<br>
  specificare<br>
  <input type="text" name="ruolo">
  <br>
  Giorno Iscrizione<br>
  <input type="text" name="giornoP">
  <br>
  <br>
 CodiceNavigazioneStellare<br>
  <input type="text" name="luogoP">
  <br>
   <br>
 PianetaBase<br>
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