<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="connessione.Db_STutenti,connessione.STutenti,connessione.Db_STviaggi,connessione.STviaggi,java.util.*,java.text.SimpleDateFormat"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>signin</title>
</head>
<body>
<form action="Autentica.jsp">
<br>

 
 nome<br>
  <input type="text" name="nome">
  <br>
  <br>
 ruolo<br>
  <input type="text" name="ruolo">
  <br>
   <br>
   <br>
 id<br>
  <input type="text" name="ID">
  <br>
  <br>
  <br>
  <input type="submit" value="Submit">
  </form>

</body>
</html>